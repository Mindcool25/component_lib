COMPLIB = {}

local default_path = core.get_modpath("component_lib")

dofile(default_path .. "/api/default_components.lua")
dofile(default_path .. "/api/generate_components.lua")

if core.settings:get_bool("component_lib_examples_enabled") then
    dofile(default_path .. "/examples/overview.lua")
end
