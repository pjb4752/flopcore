local Map = {}

local construct = function(self)
  return setmetatable(self, { __index = Map })
end

Map.new = function(...)
  local self = {}
  local key = nil
  for i, v in ipairs(arg) do
    if i % 2 ~= 0 then
      key = v
    else
      self[key] = v
    end
  end
  return construct(self)
end

Map.is_empty = function(self)
  return next(self) == nil
end

Map.get = function(self, key)
  if (self[key] == nil) then
    error('key does not exist')
  end
  return self[key]
end

return Map

