-- prototypes/recipes-sell.lua
-- Recipes for selling items
local iron_to_coin = {
    type = "recipe",
    name = "iron-to-coin",
    category = "vending",
    enabled = true,
    ingredients = {{
        type = "item",
        name = "iron-plate",
        amount = 10
    }},
    results = {{
        type = "fluid",
        name = "coin",
        amount = 50
    }},
    energy_required = 1
}

local copper_to_coin = {
    type = "recipe",
    name = "copper-to-coin",
    category = "vending",
    enabled = true,
    ingredients = {{
        type = "item",
        name = "copper-plate",
        amount = 10
    }},
    results = {{
        type = "fluid",
        name = "coin",
        amount = 50
    }},
    energy_required = 1
}

local steel_to_coin = {
    type = "recipe",
    name = "steel-to-coin",
    category = "vending",
    enabled = true,
    ingredients = {{
        type = "item",
        name = "steel-plate",
        amount = 10
    }},
    results = {{
        type = "fluid",
        name = "coin",
        amount = 275
    }},
    energy_required = 1
}

local iron_gear_wheel_to_coin = {
    type = "recipe",
    name = "iron-gear-wheel-to-coin",
    category = "vending",
    enabled = true,
    ingredients = {{
        type = "item",
        name = "iron-gear-wheel",
        amount = 10
    }},
    results = {{
        type = "fluid",
        name = "coin",
        amount = 110
    }},
    energy_required = 1
}

local iron_stick_to_coin = {
    type = "recipe",
    name = "iron-stick-to-coin",
    category = "vending",
    enabled = true,
    ingredients = {{
        type = "item",
        name = "iron-stick",
        amount = 10
    }},
    results = {{
        type = "fluid",
        name = "coin",
        amount = 110
    }},
    energy_required = 1
}

local copper_cable_to_coin = {
    type = "recipe",
    name = "copper-cable-to-coin",
    category = "vending",
    enabled = true,
    ingredients = {{
        type = "item",
        name = "copper-cable",
        amount = 10
    }},
    results = {{
        type = "fluid",
        name = "coin",
        amount = 27.5
    }},
    energy_required = 1
}

local electronic_circuit_to_coin = {
    type = "recipe",
    name = "electronic-circuit-to-coin",
    category = "vending",
    enabled = true,
    ingredients = {{
        type = "item",
        name = "electronic-circuit",
        amount = 10
    }},
    results = {{
        type = "fluid",
        name = "coin",
        amount = 145.75
    }},
    energy_required = 1
}

-- TODO red circuits (plastic?)
-- TODO blue circuits (acid?)
-- TODO barelled oil and oil products
-- TODO plastic
-- TODO sulphur and barelled acid

data:extend({iron_to_coin, copper_to_coin, steel_to_coin, iron_gear_wheel_to_coin, iron_stick_to_coin,
             copper_cable_to_coin, electronic_circuit_to_coin})
