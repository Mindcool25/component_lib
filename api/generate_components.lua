function COMPLIB.generate_node(material, component)
    -- Set up the node definition and name
    local node_name = "component_lib:" .. string.format(component.name, material.name)
    local node_def = {}
    local image_type = material.image_type and material.image_type or ""
    node_def.description = string.format(component.description, material.description)
    node_def.tiles = {string.format(component.image, image_type, material.color)}

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
    local image_type = material.image_type and material.image_type or ""
    item_def.description = string.format(component.description, material.description)
    item_def.image = string.format(component.image, image_type, material.color)

    -- Add any extra values to the item definition (like groups and such)
    if component.extras then
        for key, value in pairs(component.extras) do
            item_def[key] = value
        end
    end

    -- Generate item
    core.register_craftitem(item_name, item_def)
end

function COMPLIB.table_has_value(tab, val)
    for _, v in ipairs(tab) do
        if v == val then
            return true
        end
    end
    return false
end

function COMPLIB.generate_components(materials, components)
    if not components then
        components = COMPLIB.components
    end
    for _mk, mat in pairs(materials) do
        -- If nothing has been generated yet, set it to an empty array
        if not mat.generated then
            mat.generated = {}
        end
        for k, comp in pairs(components) do
            -- First check if the given material needs the component generated
            if not mat.components or COMPLIB.table_has_value(mat.components, k) then
                -- Add the generated component to the generated array in the material
                table.insert(mat.generated, k)
                -- Check if component is an item or a node, generate accordingly
                if not comp.type or comp.type == "item" then
                    COMPLIB.generate_item(mat, comp)
                elseif comp.type == "node" then
                    COMPLIB.generate_node(mat, comp)
                end
            end
        end
    end
end

