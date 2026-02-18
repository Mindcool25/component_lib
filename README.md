# Component Lib
This library intends on providing an API to dynamically create a set of components based off of a given material.

# Docs
## Configuration
The default configuration:
``` lua
{
    mod_name = "component_lib",
    generated_components = true,
}
```

Most defaults for generating materials and components can be set here

## Creating a material
A material is created based on a lua table in the following structure:
``` lua
{
    -- Name and description are the same as when registering a normal craftitem
    name = "matname",
    description = "Mat Name",

    -- This is the color used when colorizing the base item images
    color = "#ffffff",

    -- This table is used to determine what components are generated
    -- each component is by default not generated
    generated_components = {
        wire = true, -- This will generate 1x, 2x, 4x, 8x, and 16x wires that can be placed
        thin_wire = true,
        bar = false,
        sheet = true,
        thin_sheet = true,
    },

    -- Generated components can also just be set to true to generate all possible components
    generate_components = true,
    -- Tier is used when generating crafting recipies for each tier of more complex components
    -- Like motors and pumps and such
    -- (This is stored and can be used by external mods)
    tier = 5
}
```
