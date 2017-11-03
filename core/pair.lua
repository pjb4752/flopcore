local Pair = {}

local construct = function(pair)
  return setmetatable(pair, { __type = 'Pair' })
end

Pair.new = function(...)
  local pair = {}
  for i, v in ipairs(arg) do
    pair[i] = v
  end
  return construct(pair)
end

Pair.first = function(pair)
  return pair[1]
end

Pair.last = function(pair)
  return pair[2]
end

return Pair
