local Tuple = require('core.tuple')

describe('A Tuple', function()
  local tuple = nil

  before_each(function()
    tuple = Tuple.new(1, 2, 3)
  end)

  describe('getting the element of a tuple', function()
    describe('when the element is in bounds', function()
      it('should return the value', function()
        assert.are.equals(2, Tuple.get(tuple, 2))
      end)
    end)
  end)
end)
