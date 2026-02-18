-- An example material
-- Materials are contained in a table of tables
local example_materials = {
    -- A material contains 3 things
    --- A name, used for the registration
    --- A description, used for the display name of the item
    --- A color, used when colorizing the image
    cobalt_mat = {
        name = "cobalt",
        description = "Cobalt",
        color = "#06b5c9",
    },
}

-- You don't need to pass in a components table if you just want the defaults
COMPLIB.generate_components(example_materials)

local example_components = {
    -- Components are similar, you just need 3 things
    -- A name, used for registration (%s will be replaces with the material's name)
    -- A description, used for registration (%s will be replaces with the material's description)
    -- An image, which works the same way as normal luanti textures
    widget = {
        name = "%s_widget",
        description = "%s Widget",
        image = "component_lib_widget.png^[colorize:%s:100",
    }
}

COMPLIB.generate_components(example_materials, example_components)
