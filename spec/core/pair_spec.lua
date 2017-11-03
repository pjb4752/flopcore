local Pair = require('core.pair')

describe('A Pair', function()
  local pair = nil

  before_each(function()
    pair = Pair.new(1, 2)
  end)

  describe('getting the first of a pair', function()
    it('should return the value', function()
      assert.are.equals(1, Pair.first(pair))
    end)
  end)

  describe('getting the last of a pair', function()
    it('should return the value', function()
      assert.are.equals(2, Pair.last(pair))
    end)
  end)
end)
