local Map = {}

local construct = function(map)
  return setmetatable(map, { __type = 'Map' })
end

Map.new = function(...)
  local map = {}
  local key = nil
  for i, v in ipairs(arg) do
    if i % 2 ~= 0 then
      key = v
    else
      map[key] = v
    end
  end
  return construct(map)
end

Map.is_empty = function(map)
  return next(map) == nil
end

Map.get = function(map, key)
  if (map[key] == nil) then
    error('key does not exist')
  end
  return map[key]
end

return Map

