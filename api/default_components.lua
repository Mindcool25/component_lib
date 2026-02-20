COMPLIB.components = {
    -- Wire on a spool
    -- TODO: maybe custom texture generation code?
    -- TODO: also maybe some way to add general things
    small_wire = {
        name = "%s_wire_spool", -- material name ..  _wire_spool
        description = "%s Wire Spool", -- Material description .. Wire Spool
        image = "component_lib_spool.png^(component_lib_wire_on_spool.png^[colorize:%s:100)", -- %s here will will be a color
        -- You can add extra things to the item definition
        extras = {
            groups = {hard = 1}
        },
    },
    strip = {
        name = "%s_strip",
        description = "%s Strip",
        image = "component_lib_strip.png^[colorize:%s:100",
    },
    chainlink = {
        name = "%s_chainlink",
        description = "%s Chainlinks",
        image = "component_lib_chainlink.png^[colorize:%s:100",
    },
    sheet = {
        name = "%s_sheet",
        description = "%s Sheet",
        image = "component_lib_sheet.png^[colorize:%s:100",
    },
    gear = {
        name = "%s_gear",
        description = "%s Gear",
        image = "component_lib_gear.png^[colorize:%s:100",
    },
    ingot = {
        name = "%s_ingot",
        description = "%s Ingot",
        image = "component_lib_ingot.png^[colorize:%s:100",
    },
}
