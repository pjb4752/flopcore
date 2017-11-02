local Tuple = {}

local construct = function(tuple)
  return setmetatable(tuple, { __type = 'Tuple' })
end

Tuple.new = function(...)
  local tuple = {}
  for i, v in ipairs(arg) do
    tuple[i] = v
  end
  return construct(tuple)
end

Tuple.get = function(tuple, index)
  return tuple[index]
end

return Tuple
