function COMPLIB.generate_components(materials, components)
    if not components then
        components = COMPLIB.components
    end
    for _mk, mv in pairs(materials) do
        for _k, v in pairs(components) do
            -- TODO: allow for other mod names
            core.register_craftitem("component_lib:" .. string.format(v.name, mv.name), {
                description = string.format(v.description, mv.description),
                inventory_image = string.format(v.image, mv.color)
            })
        end
    end
end
