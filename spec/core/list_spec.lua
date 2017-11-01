local List = require('core.list')

describe('A List', function()
  local list = nil
  local empty = nil

  before_each(function()
    list = List.new(1, 2, 3)
    empty = List.new()
  end)

  describe('testing emptiness of the list', function()
    describe('when the list is empty', function()
      it('should return true', function()
        assert.is_true(List.is_empty(empty))
      end)
    end)

    describe('when the list is not empty', function()
      it('should return false', function()
        assert.is_false(List.is_empty(list))
      end)
    end)
  end)

  describe('getting the head of a list', function()
    describe('when the list is empty', function()
      it('should error', function()
        assert.has_error(function() List.head(empty) end)
      end)
    end)

    describe('when the list is not empty', function()
      it('should return the first value', function()
        assert.are.equals(1, List.head(list))
      end)
    end)
  end)

  describe('getting the tail of a list', function()
    describe('when the list is empty', function()
      it('should return an empty list', function()
        assert.are.same(List.new(), List.tail(empty))
      end)
    end)

    describe('when the list is not empty', function()
      it('should return the proper list', function()
        assert.are.same(List.new(2, 3), List.tail(list))
      end)
    end)
  end)
end)
