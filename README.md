# Component Lib
This library intends on providing an API to dynamically create a set of components based off of a given material.

# Docs
## Creating a material
Materials are simply stored as a table of materials.
As of right now, they have a name, description, and color as shown below
```lua
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
```
## Creating a component
Components are stored in a similar way as materials, but each needs a name, description, and an image to use when generating the items
```lua
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
```

## Generating components from a material
Using the above material and component, you can generate all components for all material with the following:
```lua
COMPLIB.generate_components(example_materials, example_components)
```


# TODO
- [X] Add node creation
- [X] Allow for the rest of craftitem things to be added
- [ ] Better examples?
