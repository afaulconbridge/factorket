-- prototypes/recipes-buy.lua
-- Recipes for buying items with coins
-- Usually, these are a 10:1 ratio with iron plates & copper plates
-- TODO work out lube costs
-- TODO work out plastic costs
-- belts
data.raw.recipe["transport-belt"].category = "vending"
data.raw.recipe["transport-belt"].ingredients = {{
    type = "fluid",
    name = "coin",
    amount = 15
}}
data.raw.recipe["transport-belt"].results = {{
    type = "item",
    name = "transport-belt",
    amount = 1
}}

data.raw.recipe["splitter"].category = "vending"
data.raw.recipe["splitter"].ingredients = {{
    type = "fluid",
    name = "coin",
    amount = 235
}}

data.raw.recipe["underground-belt"].category = "vending"
data.raw.recipe["underground-belt"].ingredients = {{
    type = "fluid",
    name = "coin",
    amount = 175
}}
data.raw.recipe["underground-belt"].results = {{
    type = "item",
    name = "underground-belt",
    amount = 1
}}

data.raw.recipe["loader"].category = "vending"
data.raw.recipe["loader"].ingredients = {{
    type = "fluid",
    name = "coin",
    amount = 540
}}

data.raw.recipe["fast-transport-belt"].category = "vending"
data.raw.recipe["fast-transport-belt"].ingredients = {{
    type = "fluid",
    name = "coin",
    amount = 115
}}

data.raw.recipe["fast-splitter"].category = "vending"
data.raw.recipe["fast-splitter"].ingredients = {{
    type = "fluid",
    name = "coin",
    amount = 585
}}

data.raw.recipe["fast-underground-belt"].category = "vending"
data.raw.recipe["fast-underground-belt"].ingredients = {{
    type = "fluid",
    name = "coin",
    amount = 575
}}
data.raw.recipe["fast-underground-belt"].results = {{
    type = "item",
    name = "fast-underground-belt",
    amount = 1
}}

data.raw.recipe["fast-loader"].category = "vending"
data.raw.recipe["fast-loader"].ingredients = {{
    type = "fluid",
    name = "coin",
    amount = 1355
}}

data.raw.recipe["express-transport-belt"].category = "vending"
data.raw.recipe["express-transport-belt"].ingredients = {{
    type = "fluid",
    name = "coin",
    amount = 315 -- plus 20 lube?
}}

data.raw.recipe["express-splitter"].category = "vending"
data.raw.recipe["express-splitter"].ingredients = {{
    type = "fluid",
    name = "coin",
    amount = 1585 -- plus 80 lube?
}}

data.raw.recipe["express-underground-belt"].category = "vending"
data.raw.recipe["express-underground-belt"].ingredients = {{
    type = "fluid",
    name = "coin",
    amount = 975 -- plus 20 lube?
}}
data.raw.recipe["express-underground-belt"].results = {{
    type = "item",
    name = "express-underground-belt",
    amount = 1
}}

data.raw.recipe["express-loader"].category = "vending"
data.raw.recipe["express-loader"].ingredients = {{
    type = "fluid",
    name = "coin",
    amount = 3570 -- plus 120 lube?
}}

-- inserters
data.raw.recipe["burner-inserter"].category = "vending"
data.raw.recipe["burner-inserter"].ingredients = {{
    type = "fluid",
    name = "coin",
    amount = 35
}}

data.raw.recipe["inserter"].category = "vending"
data.raw.recipe["inserter"].ingredients = {{
    type = "fluid",
    name = "coin",
    amount = 45
}}

data.raw.recipe["long-handed-inserter"].category = "vending"
data.raw.recipe["long-handed-inserter"].ingredients = {{
    type = "fluid",
    name = "coin",
    amount = 85
}}

data.raw.recipe["fast-inserter"].category = "vending"
data.raw.recipe["fast-inserter"].ingredients = {{
    type = "fluid",
    name = "coin",
    amount = 125
}}

data.raw.recipe["bulk-inserter"].category = "vending"
data.raw.recipe["bulk-inserter"].ingredients = {{
    type = "fluid",
    name = "coin",
    amount = 870 -- plus 2 plastic?
}}

-- assemblers
data.raw.recipe["assembling-machine-1"].category = "vending"
data.raw.recipe["assembling-machine-1"].ingredients = {{
    type = "fluid",
    name = "coin",
    amount = 265
}}
data.raw.recipe["assembling-machine-2"].category = "vending"
data.raw.recipe["assembling-machine-2"].ingredients = {{
    type = "fluid",
    name = "coin",
    amount = 490
}}
data.raw.recipe["assembling-machine-3"].category = "vending"
data.raw.recipe["assembling-machine-3"].ingredients = {{
    type = "fluid",
    name = "coin",
    amount = 298 -- plus 40 plastic?
}}

-- furnaces
data.raw.recipe["stone-furnace"].category = "vending"
data.raw.recipe["stone-furnace"].ingredients = {{
    type = "fluid",
    name = "coin",
    amount = 25
}}
data.raw.recipe["steel-furnace"].category = "vending"
data.raw.recipe["steel-furnace"].ingredients = {{
    type = "fluid",
    name = "coin",
    amount = 130
}}
data.raw.recipe["electric-furnace"].category = "vending"
data.raw.recipe["electric-furnace"].ingredients = {{
    type = "fluid",
    name = "coin",
    amount = 950 -- plus 10 plastic?
}}

-- TODO poles, boilers, steam, solar

-- TODO science
