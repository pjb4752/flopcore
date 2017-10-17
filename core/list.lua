local List = {}

local construct = function(self)
  return setmetatable(self, { __index = List })
end

List.new = function(...)
  local self = {}
  local current = self
  for i, v in ipairs(arg) do
    current.value = v
    current.pointer = {}
    current = current.pointer
  end

  return construct(self)
end

List.is_empty = function(self)
  return self.value == nil
end

List.head = function(self)
  return self.value
end

List.tail = function(self)
  if self:is_empty() then
    error('tail of empty list')
  end
  return construct(self.pointer)
end

List.to_s = function(self)
  local tmp = {}
  local current = self
  while true do
    if current.value then
      if type(current.value) == 'table' then
        tmp[#tmp+1] = current.value:to_s()
      else
        tmp[#tmp+1] = current.value
      end
    else
      break
    end
    current = current.pointer
  end

  return string.format('List(%s)', table.concat(tmp, ', '))
end

return List
