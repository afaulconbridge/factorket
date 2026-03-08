require("util")

-- 60 ticks per second, 4 items per lane, 2 lanes per belt = x480
-- base speed, 10 items/second
data.raw["transport-belt"]["transport-belt"].speed = 10 / 480
data.raw["underground-belt"]["underground-belt"].speed = 10 / 480
data.raw["splitter"]["splitter"].speed = 10 / 480
data.raw["loader"]["loader"].speed = 10 / 480

-- double speed, 20 items/second
data.raw["transport-belt"]["fast-transport-belt"].speed = 20 / 480
data.raw["underground-belt"]["fast-underground-belt"].speed = 20 / 480
data.raw["splitter"]["fast-splitter"].speed = 20 / 480
data.raw["loader"]["fast-loader"].speed = 20 / 480

-- quad speed, 40 items/second
data.raw["transport-belt"]["express-transport-belt"].speed = 40 / 480
data.raw["underground-belt"]["express-underground-belt"].speed = 40 / 480
data.raw["splitter"]["express-splitter"].speed = 40 / 480
data.raw["loader"]["express-loader"].speed = 40 / 480

-- unhide loader recipes
data.raw.recipe["loader"].hidden = false
data.raw.recipe["fast-loader"].hidden = false
data.raw.recipe["express-loader"].hidden = false

-- add loaders to appropriate techs
local function add_unlock(tech, recipe)
    if data.raw.technology[tech] then
        local tech_proto = data.raw.technology[tech]
        tech_proto.effects = tech_proto.effects or {}
        for _, eff in ipairs(tech_proto.effects) do
            if eff.type == "unlock-recipe" and eff.recipe == recipe then
                return -- already present
            end
        end
        table.insert(tech_proto.effects, {
            type = "unlock-recipe",
            recipe = recipe
        })
    end
end

add_unlock("logistics", "loader")
add_unlock("logistics-2", "fast-loader")
add_unlock("logistics-3", "express-loader")

-- update loader recipies
data.raw.recipe["loader"].ingredients = {{
    type = "item",
    name = "inserter",
    amount = 5
}, {
    type = "item",
    name = "transport-belt",
    amount = 2
}, {
    type = "item",
    name = "splitter",
    amount = 1
}}
data.raw.recipe["fast-loader"].ingredients = {{
    type = "item",
    name = "loader",
    amount = 1
}, {
    type = "item",
    name = "fast-transport-belt",
    amount = 2
}, {
    type = "item",
    name = "fast-splitter",
    amount = 1
}}
data.raw.recipe["express-loader"].ingredients = {{
    type = "item",
    name = "fast-loader",
    amount = 1
}, {
    type = "item",
    name = "express-transport-belt",
    amount = 2
}, {
    type = "item",
    name = "express-splitter",
    amount = 1
}}

-- increase assembly machine scale
data.raw["assembling-machine"]["assembling-machine-1"].collision_box = {{-4.4, -4.4}, {4.4, 4.4}}
data.raw["assembling-machine"]["assembling-machine-1"].selection_box = {{-4.5, -4.5}, {4.5, 4.5}}
data.raw["assembling-machine"]["assembling-machine-1"].crafting_speed = 5.0
data.raw["assembling-machine"]["assembling-machine-1"].energy_usage = "750kW"
data.raw["assembling-machine"]["assembling-machine-1"].graphics_set.animation.layers[1].scale = 1.5
data.raw["assembling-machine"]["assembling-machine-1"].graphics_set.animation.layers[1].shift = util.by_pixel(0 * 3,
    2 * 3)
data.raw["assembling-machine"]["assembling-machine-1"].graphics_set.animation.layers[2].scale = 1.5
data.raw["assembling-machine"]["assembling-machine-1"].graphics_set.animation.layers[2].shift = util.by_pixel(8.5 * 3,
    5 * 3)

data.raw["assembling-machine"]["assembling-machine-2"].collision_box = {{-4.4, -4.4}, {4.4, 4.4}}
data.raw["assembling-machine"]["assembling-machine-2"].selection_box = {{-4.5, -4.5}, {4.5, 4.5}}
data.raw["assembling-machine"]["assembling-machine-2"].crafting_speed = 10.0
data.raw["assembling-machine"]["assembling-machine-2"].energy_usage = "1500kW"
data.raw["assembling-machine"]["assembling-machine-2"].graphics_set.animation.layers[1].scale = 1.5
data.raw["assembling-machine"]["assembling-machine-2"].graphics_set.animation.layers[1].shift = util.by_pixel(0 * 3,
    4 * 3)
data.raw["assembling-machine"]["assembling-machine-2"].graphics_set.animation.layers[2].scale = 1.5
data.raw["assembling-machine"]["assembling-machine-2"].graphics_set.animation.layers[2].shift = util.by_pixel(12 * 3,
    4.75 * 3)
data.raw["assembling-machine"]["assembling-machine-2"].fluid_boxes[1].pipe_connections = {{
    flow_direction = "input",
    direction = defines.direction.north,
    position = {0, -4}
}}
data.raw["assembling-machine"]["assembling-machine-2"].fluid_boxes[2].pipe_connections = {{
    flow_direction = "output",
    direction = defines.direction.south,
    position = {0, 4}
}}

data.raw["assembling-machine"]["assembling-machine-3"].collision_box = {{-4.4, -4.4}, {4.4, 4.4}}
data.raw["assembling-machine"]["assembling-machine-3"].selection_box = {{-4.5, -4.5}, {4.5, 4.5}}
data.raw["assembling-machine"]["assembling-machine-3"].crafting_speed = 20.0
data.raw["assembling-machine"]["assembling-machine-3"].energy_usage = "3MW"
data.raw["assembling-machine"]["assembling-machine-3"].graphics_set.animation.layers[1].scale = 1.5
data.raw["assembling-machine"]["assembling-machine-3"].graphics_set.animation.layers[1].shift = util.by_pixel(0 * 3,
    -0.75 * 3)
data.raw["assembling-machine"]["assembling-machine-3"].graphics_set.animation.layers[2].scale = 1.5
data.raw["assembling-machine"]["assembling-machine-3"].graphics_set.animation.layers[2].shift = util.by_pixel(25 * 3,
    4 * 3)
data.raw["assembling-machine"]["assembling-machine-3"].fluid_boxes[1].pipe_connections = {{
    flow_direction = "input",
    direction = defines.direction.north,
    position = {0, -4}
}}
data.raw["assembling-machine"]["assembling-machine-3"].fluid_boxes[2].pipe_connections = {{
    flow_direction = "output",
    direction = defines.direction.south,
    position = {0, 4}
}}

-- scale up stone & steel furnaces to 8x8
-- Function to scale graphics layers
local function scale_graphics_set(graphics_set, scale_factor)

    if not graphics_set then
        return
    end

    local function scale_graphics_part(part)
        if part.scale then
            part.scale = part.scale * scale_factor
        end
        if part.shift and type(part.shift) == "table" and part.shift[1] and part.shift[2] then
            part.shift[1] = part.shift[1] * scale_factor
            part.shift[2] = part.shift[2] * scale_factor
        end
    end

    if graphics_set.animation and graphics_set.animation.layers then
        for _, layer in ipairs(graphics_set.animation.layers) do
            scale_graphics_part(layer)
        end
    end

    if graphics_set.working_visualisations then
        for _, vis in ipairs(graphics_set.working_visualisations) do
            if vis.animation then
                scale_graphics_part(vis.animation)
            end
        end
    end

    if graphics_set.water_reflection and graphics_set.water_reflection.pictures then
        scale_graphics_part(graphics_set.water_reflection.pictures)
    end
end

data.raw["furnace"]["stone-furnace"].collision_box = {{-3.9, -3.9}, {3.9, 3.9}}
data.raw["furnace"]["stone-furnace"].selection_box = {{-4, -4}, {4, 4}}
data.raw["furnace"]["stone-furnace"].crafting_speed = 16.0
data.raw["furnace"]["stone-furnace"].energy_usage = "1440kW"
scale_graphics_set(data.raw["furnace"]["stone-furnace"].graphics_set, 4)

data.raw["furnace"]["steel-furnace"].collision_box = {{-3.9, -3.9}, {3.9, 3.9}}
data.raw["furnace"]["steel-furnace"].selection_box = {{-4, -4}, {4, 4}}
data.raw["furnace"]["steel-furnace"].crafting_speed = 32.0
data.raw["furnace"]["steel-furnace"].energy_usage = "1440kW"
scale_graphics_set(data.raw["furnace"]["steel-furnace"].graphics_set, 4)

-- update recipes that use stone-furnace to just use stone
data.raw.recipe["boiler"].ingredients = {{
    type = "item",
    name = "stone",
    amount = 5
}, {
    type = "item",
    name = "pipe",
    amount = 4
}}
data.raw.recipe["burner-mining-drill"].ingredients = {{
    type = "item",
    name = "iron-gear-wheel",
    amount = 3
}, {
    type = "item",
    name = "stone",
    amount = 5
}, {
    type = "item",
    name = "iron-plate",
    amount = 3
}}
