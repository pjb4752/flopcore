local Vector = {}

local construct = function(vector)
  return setmetatable(vector, { __type = 'Vector' })
end

Vector.new = function(...)
  local vector = {}
  for i, v in ipairs(arg) do
    vector[i] = v
  end

  return construct(vector)
end

Vector.is_empty = function(vector)
  return vector[1] == nil
end

Vector.get = function(vector, index)
  if (vector[index] == nil) then
    error('access element outside vector length')
  end
  return vector[index]
end

return Vector
