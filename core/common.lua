local Common = {}

Common.to_str = function(value)
  return tostring(value)
end

Common.num_to_str = Common.to_str
Common.bool_to_str = Common.to_str

Common.add = function(l, r)
  return l + r
end

Common.sub = function(l, r)
  return l - r
end

Common.mlt = function(l, r)
  return l * r
end

Common.div = function(l, r)
  return l / r
end

Common.mod = function(l, r)
  return l % r
end

return Common
