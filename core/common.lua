local Common = {}

Common.to_str = function(value)
  return tostring(value)
end

Common.num_to_str = Common.to_str
Common.bool_to_str = Common.to_str

return Common
