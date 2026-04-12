-- An example material
-- Materials are contained in a table of tables
local example_materials = {
    -- A material contains 3 things
    --- A name, used for the registration
    --- A description, used for the display name of the item
    --- A color, which is generally either a colorize or multiply, but can be whatever
    --- texture modifier you want.
    cobalt_mat = {
        name = "cobalt",
        description = "Cobalt",
        color = "^[colorize:#06b5c9:100",
    },

    unobtainium_mat = {
        name = "unobtainium",
        description = "Unobtainium",
        color = "^[multiply:#aa1231",
        -- The image type allows you to insert a string before the .png of a texture
        -- Useful if you want a warm or cold base texture for a given material
        -- Optional, defaults to normal file name (in the case of the example base components, neutral)
        image_type = "_warm",
    }
}

-- You don't need to pass in a components table if you just want the defaults
COMPLIB.generate_components(example_materials)

local example_components = {
    -- Components are similar, you just need 3 things
    -- A name, used for registration (%s will be replaces with the material's name)
    -- A description, used for registration (%s will be replaces with the material's description)
    -- An image, which works the same way as normal luanti textures
    -- This image *must* have two string replacements. One for image type, and one for the texture
    -- modification
    widget = {
        name = "%s_widget",
        description = "%s Widget",
        image = "component_lib_widget%s.png%s",
    }
}

COMPLIB.generate_components(example_materials, example_components)
