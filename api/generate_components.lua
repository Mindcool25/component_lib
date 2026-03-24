function COMPLIB.generate_node(material, component)
    -- Set up the node definition and name
    local node_name = "component_lib:" .. string.format(component.name, material.name)
    local node_def = {}
    node_def.description = string.format(component.description, material.description)
    node_def.tiles = {string.format(component.image, material.color)}

    -- Add any extra values to the node definition (like groups and such)
    if component.extras then
        for key, value in pairs(component.extras) do
            node_def[key] = value
        end
    end

    -- Generate node
    core.register_node(node_name, node_def)
end

function COMPLIB.generate_item(material, component)
    -- Set up the node definition and name
    local item_name = "component_lib:" .. string.format(component.name, material.name)
    local item_def = {}
    item_def.description = string.format(component.description, material.description)
    item_def.image = string.format(component.image, material.color)

    -- Add any extra values to the item definition (like groups and such)
    if component.extras then
        for key, value in pairs(component.extras) do
            item_def[key] = value
        end
    end

    -- Generate item
    core.register_craftitem(item_name, item_def)
end


function COMPLIB.generate_components(materials, components)
    if not components then
        components = COMPLIB.components
    end
    for _mk, mat in pairs(materials) do
        for _k, comp in pairs(components) do
            -- TODO: allow for other mod names
            -- Set up basic item definitions
            local item_def = {
                description = string.format(comp.description, mat.description),
                inventory_image = string.format(comp.image, mat.color),
            }
            -- Add any extra values to the item definition
            if comp.extras ~= nil then
                for k, v in pairs(comp.extras) do
                    item_def[k] = v
                end
            end

            -- Check if component is an item or a node, generate accordingly
            if not comp.type or comp.type == "item" then
                -- core.register_craftitem("component_lib:" .. string.format(comp.name, mat.name), item_def)
                COMPLIB.generate_item(mat, comp)
            elseif comp.type == "node" then
                COMPLIB.generate_node(mat, comp)
            end

        end
    end
end

