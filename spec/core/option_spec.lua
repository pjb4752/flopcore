local Option = require('flopcore.core.option')

describe('An Optional value', function()
  local option = nil
  local empty_option = nil

  before_each(function()
    option = Option.new('wrapped')
    empty_option = Option.new(nil)
  end)

  describe('testing emptiness of the option', function()
    describe('when the optional value is empty', function()
      it('should return true', function()
        assert.is_true(empty_option:is_empty())
      end)
    end)

    describe('when the optional value is present', function()
      it('should return false', function()
        assert.is_false(option:is_empty())
      end)
    end)
  end)

  describe('getting the option value', function()
    describe('when the optional value is empty', function()
      it('should return nil', function()
        assert.is_nil(empty_option:get())
      end)
    end)

    describe('when the optional value is present', function()
      it('should return the wrapped value', function()
        assert.are.equals('wrapped', option:get())
      end)
    end)
  end)
end)
