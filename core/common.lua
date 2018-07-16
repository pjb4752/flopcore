local Common = {}

Common.to_str = function(value)
  return tostring(value)
end

Common.num_to_str = Common.to_str
Common.bool_to_str = Common.to_str

Common.plus = function(l, r)
  return l + r
end

Common.minus = function(l, r)
  return l - r
end

Common.mult = function(l, r)
  return l * r
end

Common.div = function(l, r)
  return l / r
end

Common.mod = function(l, r)
  return l % r
end

return Common
