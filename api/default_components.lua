COMPLIB.components = {
    -- Wire on a spool
    -- TODO: maybe custom texture generation code?
    -- TODO: also maybe some way to add general things
    small_wire = {
        type = "item", -- Defaults to item, set to node if you want a node.
        name = "%s_wire_spool", -- material name ..  _wire_spool
        description = "%s Wire Spool", -- Material description .. Wire Spool
        -- The first %s is used for if you want a different base image defined by a material
        -- The second is for colorizing or modifying the texture.
        image = "component_lib_spool.png^(component_lib_wire_on_spool%s.png%s)",
        -- You can add extra things to the item definition
        extras = {
            groups = {hard = 1}
        },
    },

    block = {
        -- You can also generate nodes, just set type to node.
        type = "node",
        name = "%s_block",
        description = "%s Block",
        image = "component_lib_block%s.png%s",
        extras = {
            groups = {cracky=3, stone=1, oddly_breakable_by_hand=3}
        },
    },

    strip = {
        name = "%s_strip",
        description = "%s Strip",
        image = "component_lib_strip%s.png%s",
    },

    chainlink = {
        name = "%s_chainlink",
        description = "%s Chainlinks",
        image = "component_lib_chainlink%s.png%s",
    },

    sheet = {
        name = "%s_sheet",
        description = "%s Sheet",
        image = "component_lib_sheet%s.png%s",
    },

    gear = {
        name = "%s_gear",
        description = "%s Gear",
        image = "component_lib_gear%s.png%s",
    },

    ingot = {
        name = "%s_ingot",
        description = "%s Ingot",
        image = "component_lib_ingot%s.png%s",
    },

    plate = {
        name = "%s_plate",
        description = "%s Plate",
        image = "component_lib_plate%s.png%s",
    },
}
