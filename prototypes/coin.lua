-- prototypes/coin.lua
-- "coin" fluid used as a simple currency / token
local coin = {
  type = "fluid",
  name = "coin",
  icon = "__factorket__/graphics/icons/coin.png",
  icon_size = 64,
  default_temperature = 25,
  heat_capacity = "1kJ",
  base_color = {r = 0.8, g = 0.8, b = 0.2},
  flow_color = {r = 1, g = 1, b = 0.4},
  max_temperature = 100,
  hidden = false
}

data:extend({ coin })