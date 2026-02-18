function COMPLIB.register_material(component_name, color, create_comps)

    if create_comps then
        COMPLIB.generate_components()
    end
    return

end

function COMPLIB.generate_components(material, config)
    -- If no config is passed, use global config
    if not config then
        config = COMPLIB.config
    end

    -- Helper values
    texture_prefix = config.modname .. "_"

    -- TODO: Clean this up a bit
    if material.thin_wire then
        -- Wire Spool
        core.register_craftitem("component_lib:"..material.name.."_spool", {
            description = material.description .. " Wire",
            inventory_image = "component_lib_spool.png^(component_lib_wire_on_spool.png^[colorize:".. material.color ..":100)"
        })
    end

    if material.strip then
        -- Strip
        core.register_craftitem("component_lib:"..material.name.."_strip", {
            description = material.description .. " Strip",
            inventory_image = "component_lib_strip.png^(component_lib_strip.png^[colorize:".. material.color ..":100)"
        })
    end
    if material.sheet then
        -- Plate
        core.register_craftitem("component_lib:"..material.name.."_sheet", {
            description = material.description .. " Sheet",
            inventory_image = "component_lib_sheet.png^[colorize:".. material.color ..":100"
        })

    end

    if material.chainlink then
        -- Chainlink
        core.register_craftitem("component_lib:"..material.name.."_chainlink", {
            description = material.description .. " Chain Link",
            inventory_image = "component_lib_chainlink.png^[colorize:".. material.color ..":100"
        })
    end

    if material.ingot then
        -- Ingot
        core.register_craftitem("component_lib:"..material.name.."_ingot", {
            description = material.description .. " Ingot",
            inventory_image = "component_lib_ingot.png^[colorize:".. material.color ..":100"
        })
    end
end

-- Creates a copy of gobal config that can be modifed
function COMPLIB.generate_config()
    return COMPLIB.config
end

cobalt_mat = {
    -- Name and description are the same as when registering a normal craftitem
    name = "cobalt",
    description = "Cobalt",
    color = "#06b5c9",

    -- Overrides for generating specific types
    -- Defaults to global config or passed config
    components = [
    ],
    excluded_components = [
    ],
    thin_wire = true,
    strip = true,
    sheet = true,
    chainlink = true,
    ngot = true,
}

COMPLIB.generate_components(cobalt_mat)
