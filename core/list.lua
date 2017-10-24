local List = {}

local construct = function(list)
  return setmetatable(list, { __type = 'List' })
end

List.new = function(...)
  local list = {}
  local current = list
  for i, v in ipairs(arg) do
    current.value = v
    current.pointer = {}
    current = current.pointer
  end

  return construct(list)
end

List.is_empty = function(list)
  return list.value == nil
end

List.head = function(list)
  if (list.value == nil) then
    error('head of empty list')
  end
  return list.value
end

List.tail = function(self)
  local pointer = self.pointer or {}
  return construct(pointer)
end

return List
