COMPLIB = {
    -- TODO: Write a default config
    -- TODO: also figure out the best way to do this if multiple mods use this, idk
    config = {
        mod_name = "component_lib", -- used when registering items/nodes
        generated_components = { -- List of all materials to be generated
            "wire_spool",
            "chainlinks",
            "block",
            "strip",
            "ingot",
            "sheet",
            "gear",
            "bar",
        }, -- can also be a table of all components

        component_types = [
            "wire_spool",
            "chainlinks",
            "block",
            "strip",
            "ingot",
            "sheet",
            "gear",
            "bar",
        ],

        -- Textures are only overridable in the material table
        -- TODO: make this a curve or smth, function?
        wire_properties = {
            x1_image = "put_something_here_later.png",
            x2_image = "put_something_here_later.png",
            x4_image = "put_something_here_later.png",
            x8_image = "put_something_here_later.png",
            x16_image = "put_something_here_later.png",
        },

        thin_wire_properties = {
            spool_image = "spool_image_here.png",
            wire_image = "wire_image_here.png",
        },

        strip_properties = {
            strip_image = "strip_image_here.png",
        },

    },

    -- Modified configs for individual mods are stored here
    mod_configs = {},

    world = core.get_worldpath(),
}

local default_path = core.get_modpath("component_lib")
dofile(default_path .. "/api/component_reg.lua")
