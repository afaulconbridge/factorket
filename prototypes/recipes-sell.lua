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
    energy_required = 0.5
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
    energy_required = 0.5
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
    energy_required = 0.5
}

-- TODO gears
-- TODO sticks
-- TODO green circuits
-- TODO red circuits
-- TODO blue circuits
-- TODO cables

data:extend({iron_to_coin, copper_to_coin, steel_to_coin})
