function COMPLIB.generate_components(materials, components)
    if not components then
        components = COMPLIB.components
    end
    for _mk, mv in pairs(materials) do
        for _k, v in pairs(components) do
            -- TODO: allow for other mod names
            -- Set up basic item definitions
            local item_def = {
                description = string.format(v.description, mv.description),
                inventory_image = string.format(v.image, mv.color),
            }
            -- Add any extra values to the item definition
            if v.extras ~= nil then
                for k, v in pairs(v.extras) do
                    item_def[k] = v
                end
            end
            core.register_craftitem("component_lib:" .. string.format(v.name, mv.name), item_def)
        end
    end
end
