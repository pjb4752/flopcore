local Option = {}

local construct = function(self)
  return setmetatable(self, { __index = Option })
end

Option.new = function(wrapped)
  local self = { wrapped = wrapped}
  return construct(self)
end

Option.is_empty = function(self)
  return self.wrapped == nil
end

Option.get = function(self)
  return self.wrapped
end

return Option
