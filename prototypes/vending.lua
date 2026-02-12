-- prototypes/vending.lua
-- Vending machine for trading coins

local vending_category = {
  type = "recipe-category",
  name = "vending"
}

local vending_machine = table.deepcopy(data.raw["assembling-machine"]["assembling-machine-1"])
vending_machine.name = "vending-machine"
vending_machine.minable.result = "vending-machine"
vending_machine.crafting_categories = {"vending"}

local vending_item = {
  type = "item",
  name = "vending-machine",
  icon = "__base__/graphics/icons/assembling-machine-1.png",
  icon_size = 64,
  subgroup = "production-machine",
  order = "e[vending-machine]",
  place_result = "vending-machine",
  stack_size = 50
}

local vending_recipe = {
  type = "recipe",
  name = "vending-machine",
  enabled = true,
  ingredients = {
    {type = "item", name = "coin", amount = 265}
  },
  results = {
    {type = "item", name = "vending-machine", amount = 1}
  },
  energy_required = 5
}

data:extend({ vending_category, vending_machine, vending_item, vending_recipe })
