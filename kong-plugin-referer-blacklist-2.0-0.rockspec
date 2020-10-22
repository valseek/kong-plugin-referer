package = "kong-plugin-referer-blacklist"
version = "2.0-0"

local pluginName = package:match("^kong%-plugin%-(.+)$")

supported_platforms = {"linux", "macosx"}
source = {
  url = "https://github.com/valseek/kong-plugin-referer.git",
  tag = "v2.0.0"
}

description = {
  summary = "Easily add referer black list access to your API by enabling this plugin",
  license = "MIT"
}

build = {
  type = "builtin",
  modules = {
    ["kong.plugins."..pluginName..".handler"] = "kong/plugins/"..pluginName.."/handler.lua",
    ["kong.plugins."..pluginName..".schema"] = "kong/plugins/"..pluginName.."/schema.lua"
  }
}
