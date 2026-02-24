-- prototypes/recipes-buy.lua
-- Recipes for buying items with coins
-- Usually, these are a 10:1 ratio with iron plates & copper plates
-- TODO work out lube costs
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

-- TODO inserters

-- TODO assemblers
-- TODO furnaces
-- TODO poles, boilers, steam, solar

-- TODO science
