-- prototypes/recipes.lua
-- Recipes for selling items

local iron_to_coin = {
  type = "recipe",
  name = "iron-to-coin",
  category = "vending",
  enabled = true,
  ingredients = {
    {type = "item", name = "iron-plate", amount = 1}
  },
  results = {
    {type = "fluid", name = "coin", amount = 5}
  },
  energy_required = 0.5
}

local copper_to_coin = {
  type = "recipe",
  name = "copper-to-coin",
  category = "vending",
  enabled = true,
  ingredients = {
    {type = "item", name = "copper-plate", amount = 1}
  },
  results = {
    {type = "fluid", name = "coin", amount = 5}
  },
  energy_required = 0.5
}

local steel_to_coin = {
  type = "recipe",
  name = "steel-to-coin",
  category = "vending",
  enabled = true,
  ingredients = {
    {type = "item", name = "steel-plate", amount = 1}
  },
  results = {
    {type = "fluid", name = "coin", amount = 26}
  },
  energy_required = 0.5
}

local coin_to_yellow_belt = {
  type = "recipe",
  name = "coin-to-yellow-belt",
  category = "vending",
  enabled = true,
  ingredients = {
    {type = "fluid", name = "coin", amount = 30}
  },
  results = {
    {type = "item", name = "transport-belt", amount = 1}
  },
  energy_required = 0.5
}
-- disable base recipe
data.raw.recipe["transport-belt"].enabled = false

local coin_to_yellow_splitter = {
  type = "recipe",
  name = "coin-to-yellow-splitter",
  category = "vending",
  enabled = true,
  ingredients = {
    {type = "fluid", name = "coin", amount = 235}
  },
  results = {
    {type = "item", name = "splitter", amount = 1}
  },
  energy_required = 0.5
}
-- disable base recipe
data.raw.recipe["splitter"].enabled = false

local coin_to_yellow_underground = {
  type = "recipe",
  name = "coin-to-yellow-underground",
  category = "vending",
  enabled = true,
  ingredients = {
    {type = "fluid", name = "coin", amount = 175}
  },
  results = {
    {type = "item", name = "underground-belt", amount = 1}
  },
  energy_required = 0.5
}
-- disable base recipe
data.raw.recipe["underground-belt"].enabled = false

data:extend({ iron_to_coin, copper_to_coin, steel_to_coin, coin_to_yellow_belt, coin_to_yellow_splitter, coin_to_yellow_underground })