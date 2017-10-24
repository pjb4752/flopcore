local Option = require('core.option')

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
        assert.is_true(Option.is_empty(empty_option))
      end)
    end)

    describe('when the optional value is present', function()
      it('should return false', function()
        assert.is_false(Option.is_empty(option))
      end)
    end)
  end)

  describe('getting the option value', function()
    describe('when the optional value is empty', function()
      it('should return nil', function()
        assert.is_nil(Option.get(empty_option))
      end)
    end)

    describe('when the optional value is present', function()
      it('should return the wrapped value', function()
        assert.are.equals('wrapped', Option.get(option))
      end)
    end)
  end)
end)
