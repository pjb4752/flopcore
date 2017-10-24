local Map = require('core.map')

describe('A Map', function()
  local map = nil
  local empty_map = nil

  before_each(function()
    map = Map.new('key1', 'value1', 'key2', 'value2')
    empty_map = Map.new()
  end)

  describe('testing emptiness of the map', function()
    describe('when the map is empty', function()
      it('should return true', function()
        assert.is_true(Map.is_empty(empty_map))
      end)
    end)

    describe('when the map is not empty', function()
      it('should return false', function()
        assert.is_false(Map.is_empty(map))
      end)
    end)
  end)

  describe('getting a value by key', function()
    describe('when key exists', function()
      it('should return the value', function()
        assert.are.equals('value1', Map.get(map, 'key1'))
      end)
    end)

    describe('when the key does not exist', function()
      it('should cause an error', function()
        assert.has_error(function() Map.get(empty_map, 'key1') end)
      end)
    end)
  end)
end)
