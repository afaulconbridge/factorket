-- prototypes/recipes-buy.lua
-- Recipes for buying items with coins
-- Usually, these are a 10:1 ratio with iron plates & copper plates
-- TODO work out lube costs
-- TODO work out plastic costs
-- belts
data.raw.recipe["transport-belt"].category = "vending"
data.raw.recipe["transport-belt"].energy_required = 1
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
data.raw.recipe["splitter"].energy_required = 1
data.raw.recipe["splitter"].ingredients = {{
    type = "fluid",
    name = "coin",
    amount = 235
}}

data.raw.recipe["underground-belt"].category = "vending"
data.raw.recipe["underground-belt"].energy_required = 1
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
data.raw.recipe["loader"].energy_required = 1
data.raw.recipe["loader"].ingredients = {{
    type = "fluid",
    name = "coin",
    amount = 540
}}

data.raw.recipe["fast-transport-belt"].category = "vending"
data.raw.recipe["fast-transport-belt"].energy_required = 1
data.raw.recipe["fast-transport-belt"].ingredients = {{
    type = "fluid",
    name = "coin",
    amount = 115
}}

data.raw.recipe["fast-splitter"].category = "vending"
data.raw.recipe["fast-splitter"].energy_required = 1
data.raw.recipe["fast-splitter"].ingredients = {{
    type = "fluid",
    name = "coin",
    amount = 585
}}

data.raw.recipe["fast-underground-belt"].category = "vending"
data.raw.recipe["fast-underground-belt"].energy_required = 1
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
data.raw.recipe["fast-loader"].energy_required = 1
data.raw.recipe["fast-loader"].ingredients = {{
    type = "fluid",
    name = "coin",
    amount = 1355
}}

data.raw.recipe["express-transport-belt"].category = "vending"
data.raw.recipe["express-transport-belt"].energy_required = 1
data.raw.recipe["express-transport-belt"].ingredients = {{
    type = "fluid",
    name = "coin",
    amount = 315 -- plus 20 lube?
}}

data.raw.recipe["express-splitter"].category = "vending"
data.raw.recipe["express-splitter"].energy_required = 1
data.raw.recipe["express-splitter"].ingredients = {{
    type = "fluid",
    name = "coin",
    amount = 1585 -- plus 80 lube?
}}

data.raw.recipe["express-underground-belt"].category = "vending"
data.raw.recipe["express-underground-belt"].energy_required = 1
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
data.raw.recipe["express-loader"].energy_required = 1
data.raw.recipe["express-loader"].ingredients = {{
    type = "fluid",
    name = "coin",
    amount = 3570 -- plus 120 lube?
}}

-- inserters
data.raw.recipe["burner-inserter"].category = "vending"
data.raw.recipe["burner-inserter"].energy_required = 1
data.raw.recipe["burner-inserter"].ingredients = {{
    type = "fluid",
    name = "coin",
    amount = 35
}}

data.raw.recipe["inserter"].category = "vending"
data.raw.recipe["inserter"].energy_required = 1
data.raw.recipe["inserter"].ingredients = {{
    type = "fluid",
    name = "coin",
    amount = 45
}}

data.raw.recipe["long-handed-inserter"].category = "vending"
data.raw.recipe["long-handed-inserter"].energy_required = 1
data.raw.recipe["long-handed-inserter"].ingredients = {{
    type = "fluid",
    name = "coin",
    amount = 85
}}

data.raw.recipe["fast-inserter"].category = "vending"
data.raw.recipe["fast-inserter"].energy_required = 1
data.raw.recipe["fast-inserter"].ingredients = {{
    type = "fluid",
    name = "coin",
    amount = 125
}}

data.raw.recipe["bulk-inserter"].category = "vending"
data.raw.recipe["bulk-inserter"].energy_required = 1
data.raw.recipe["bulk-inserter"].ingredients = {{
    type = "fluid",
    name = "coin",
    amount = 870 -- plus 2 plastic?
}}

-- assemblers
data.raw.recipe["assembling-machine-1"].category = "vending"
data.raw.recipe["assembling-machine-1"].energy_required = 1
data.raw.recipe["assembling-machine-1"].ingredients = {{
    type = "fluid",
    name = "coin",
    amount = 265 * 3
}}
data.raw.recipe["assembling-machine-2"].category = "vending"
data.raw.recipe["assembling-machine-2"].energy_required = 1
data.raw.recipe["assembling-machine-2"].ingredients = {{
    type = "fluid",
    name = "coin",
    amount = 490 * 3
}}
data.raw.recipe["assembling-machine-3"].category = "vending"
data.raw.recipe["assembling-machine-3"].energy_required = 1
data.raw.recipe["assembling-machine-3"].ingredients = {{
    type = "fluid",
    name = "coin",
    amount = 298 * 3 -- plus 40 plastic?
}}

-- furnaces
data.raw.recipe["stone-furnace"].category = "vending"
data.raw.recipe["stone-furnace"].energy_required = 1
data.raw.recipe["stone-furnace"].ingredients = {{
    type = "fluid",
    name = "coin",
    amount = 100
}}
data.raw.recipe["steel-furnace"].category = "vending"
data.raw.recipe["steel-furnace"].energy_required = 1
data.raw.recipe["steel-furnace"].ingredients = {{
    type = "fluid",
    name = "coin",
    amount = 520
}}
data.raw.recipe["electric-furnace"].category = "vending"
data.raw.recipe["electric-furnace"].energy_required = 1
data.raw.recipe["electric-furnace"].ingredients = {{
    type = "fluid",
    name = "coin",
    amount = 950 -- plus 10 plastic?
}}

-- lab
data.raw.recipe["lab"].category = "vending"
data.raw.recipe["lab"].energy_required = 1
data.raw.recipe["lab"].ingredients = {{
    type = "fluid",
    name = "coin",
    amount = 510
}}

-- radar
data.raw.recipe["radar"].category = "vending"
data.raw.recipe["radar"].energy_required = 1
data.raw.recipe["radar"].ingredients = {{
    type = "fluid",
    name = "coin",
    amount = 325
}}

-- mining
data.raw.recipe["burner-mining-drill"].category = "vending"
data.raw.recipe["burner-mining-drill"].energy_required = 1
data.raw.recipe["burner-mining-drill"].ingredients = {{
    type = "fluid",
    name = "coin",
    amount = 115
}}

data.raw.recipe["electric-mining-drill"].category = "vending"
data.raw.recipe["electric-mining-drill"].energy_required = 1
data.raw.recipe["electric-mining-drill"].ingredients = {{
    type = "fluid",
    name = "coin",
    amount = 275
}}

-- science
data.raw.recipe["automation-science-pack"].category = "vending"
data.raw.recipe["automation-science-pack"].energy_required = 1
data.raw.recipe["automation-science-pack"].ingredients = {{
    type = "fluid",
    name = "coin",
    amount = 20
}}
data.raw.recipe["logistic-science-pack"].category = "vending"
data.raw.recipe["logistic-science-pack"].energy_required = 1
data.raw.recipe["logistic-science-pack"].ingredients = {{
    type = "fluid",
    name = "coin",
    amount = 70
}}
data.raw.recipe["military-science-pack"].category = "vending"
data.raw.recipe["military-science-pack"].energy_required = 1
data.raw.recipe["military-science-pack"].ingredients = {{
    type = "fluid",
    name = "coin",
    amount = 275
}}
data.raw.recipe["chemical-science-pack"].category = "vending"
data.raw.recipe["chemical-science-pack"].energy_required = 1
data.raw.recipe["chemical-science-pack"].ingredients = {{
    type = "fluid",
    name = "coin",
    amount = 195 -- plus 3 plastic and 0.5 sulphur?
}}
data.raw.recipe["chemical-science-pack"].results = {{
    type = "item",
    name = "chemical-science-pack",
    amount = 1
}}
data.raw.recipe["production-science-pack"].category = "vending"
data.raw.recipe["production-science-pack"].energy_required = 1
data.raw.recipe["production-science-pack"].ingredients = {{
    type = "fluid",
    name = "coin",
    amount = 834 -- plus 6 plastic ?
}}
data.raw.recipe["production-science-pack"].results = {{
    type = "item",
    name = "production-science-pack",
    amount = 1
}}
data.raw.recipe["utility-science-pack"].category = "vending"
data.raw.recipe["utility-science-pack"].energy_required = 1
data.raw.recipe["utility-science-pack"].ingredients = {{
    type = "fluid",
    name = "coin",
    amount = 831 -- plus 6 plastic, 0.6 sulphur and a drop of lube!?
}}
data.raw.recipe["utility-science-pack"].results = {{
    type = "item",
    name = "utility-science-pack",
    amount = 1
}}

-- TODO solar & advanced power 
-- TODO nuclear
-- TODO satellite

