-- Scale specific recipes by 10
-- TODO respect max stack size of output - produce multiple output items instead of an oversized stack
local SCALE = 10
local targets = {"copper-plate", "iron-plate", "stone-brick", "steel-plate", "iron-gear-wheel", "iron-stick",
                 "copper-cable", "electronic-circuit", "advanced-circuit", "processing-unit", "repair-pack",
                 "engine-unit", "electric-engine-unit", "concrete", "hazard-concrete", "refined-concrete",
                 "refined-hazard-concrete", "landfill", "rail", "low-density-structure"}

local function scale_ingredient(ing)
    if not ing then
        return ing
    end
    if ing.amount then
        ing.amount = ing.amount * SCALE
    elseif ing[2] then
        ing[2] = ing[2] * SCALE
    end
    return ing
end

local function scale_result(res)
    if not res then
        return res
    end
    if type(res) == "string" then
        return res
    end
    if res.amount then
        res.amount = res.amount * SCALE
    elseif res[2] then
        res[2] = res[2] * SCALE
    elseif res.amount_min or res.amount_max then
        if res.amount_min then
            res.amount_min = res.amount_min * SCALE
        end
        if res.amount_max then
            res.amount_max = res.amount_max * SCALE
        end
    end
    return res
end

local function scale_recipe_obj(recipe)
    if not recipe then
        return
    end

    if recipe.ingredients then
        for i, ing in ipairs(recipe.ingredients) do
            recipe.ingredients[i] = scale_ingredient(ing)
        end
    end

    if recipe.results then
        for i, res in ipairs(recipe.results) do
            recipe.results[i] = scale_result(res)
        end
    else
        if recipe.result_count then
            recipe.result_count = recipe.result_count * SCALE
        elseif recipe.result then
            recipe.result_count = SCALE
        end
    end

    if recipe.energy_required then
        recipe.energy_required = recipe.energy_required * SCALE
    else
        recipe.energy_required = 0.5 * SCALE
    end
end

for _, name in ipairs(targets) do
    local recipe = data.raw["recipe"][name]
    if recipe then
        scale_recipe_obj(recipe)
        if recipe.normal then
            scale_recipe_obj(recipe.normal)
        end
        if recipe.expensive then
            scale_recipe_obj(recipe.expensive)
        end
    end
end
