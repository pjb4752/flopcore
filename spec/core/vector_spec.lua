local Vector = require('core.vector')

describe('A Vector', function()
  local vector = nil
  local empty = nil

  before_each(function()
    vector = Vector.new(1, 2, 3)
    empty = Vector.new()
  end)

  describe('testing emptiness of the vector', function()
    describe('when the vector is empty', function()
      it('should return true', function()
        assert.is_true(Vector.is_empty(empty))
      end)
    end)

    describe('when the vector is not empty', function()
      it('should return false', function()
        assert.is_false(Vector.is_empty(vector))
      end)
    end)
  end)

  describe('getting the element of a vector', function()
    describe('when the element is in bounds', function()
      it('should return the value', function()
        assert.are.equals(2, Vector.get(vector, 2))
      end)
    end)

    describe('when the element is out of bounds', function()
      it('should error', function()
        assert.has_error(function() Vector.get(empty, 1) end)
      end)
    end)
  end)
end)
