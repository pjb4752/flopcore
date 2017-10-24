local Option = {}

local construct = function(option)
  return setmetatable(option, { __type = 'Option' })
end

Option.new = function(wrapped)
  local option = { wrapped = wrapped}
  return construct(option)
end

Option.is_empty = function(option)
  return option.wrapped == nil
end

Option.get = function(option)
  return option.wrapped
end

return Option
