# Component Lib
This library intends on providing an API to dynamically create a set of components based off of a given material.

# Docs
## Creating a material
Materials are simply stored as a table of materials.
As of right now, they have a name, description, and color as shown below
```lua
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
```
## Creating a component
Components are stored in a similar way as materials, but each needs a name, description, and an image to use when generating the items
```lua
local example_components = {
    -- Components are similar, you just need 3 things
    -- A name, used for registration (%s will be replaces with the material's name)
    -- A description, used for registration (%s will be replaces with the material's description)
    -- An image, which works the same way as normal luanti textures
    -- Extras table, which holds any extra values you want to add to the item definition
    widget = {
        name = "%s_widget",
        description = "%s Widget",
        image = "component_lib_widget.png^[colorize:%s:100",
        extras = {
            groups = { hard = 1 },
            stack_max = 16,
        },
    }
}
```

# TODO
- [ ] Add node creation
- [ ] Change mod name when being used as a library
- [x] Allow for the rest of craftitem things to be added
- [ ] Better examples?
