-- prototypes/coin.lua
-- "coin" item used as a simple currency / token
local coin = {
  type = "item",
  name = "coin",
  icon = "__factorket__/graphics/icons/coin.png",
  icon_size = 64,
  subgroup = "intermediate-product",
  order = "a[coin]",
  stack_size = 1000,
  hidden = false
}

data:extend({ coin })