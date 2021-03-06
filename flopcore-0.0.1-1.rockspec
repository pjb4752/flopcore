package = "flopcore"
version = "0.0.1-1"
source = {
  url = "https://github.com/pjb4752/flopcore/archive/v0.0.1.tar.gz",
  dir = "flopcore-0.0.1"
}
description = {
  summary = "core lib for flop language",
  detailed = [[
    library providing core functionality for flop language
  ]],
  homepage = "https://github.com/pjb4752/flopcore",
  license = ""
}
dependencies = {
  "lua >= 5.1",
}
build = {
  type = "builtin",
  modules = {
    ["flopcore.core.common"] = "core/common.lua",
    ["flopcore.core.list"] = "core/list.lua",
    ["flopcore.core.map"] = "core/map.lua",
    ["flopcore.core.option"] = "core/option.lua",
    ["flopcore.core.pair"] = "core/pair.lua",
    ["flopcore.core.vector"] = "core/vector.lua",
  }
}
