if leighzermods.leighzerscienceores.automationEnabled then
    data:extend({
            {
        type = "recipe",
        name = "automation-science-ore-to-science",
        energy_required = data.raw["recipe"]["automation-science-pack"].energy_required, --same time to craft as vanilla science pack
        enabled = true,
        category = "crafting",--basic crafting category, this means tier one assembler and up can craft, or you can craft by hand
        ingredients = {{"automation-science-ore", leighzermods.leighzerscienceores.automationRequirement}},
        result = "automation-science-pack",
        result_count = 1,
        subgroup = "leighzerscienceore",
        order = "z-a"
        }
    })
    table.insert(leighzermods.leighzerscienceores.productivityEnabledRecipes,'automation-science-ore-to-science')

end

if leighzermods.leighzerscienceores.logisticEnabled then
    data:extend({
            {
        type = "recipe",
        name = "logistic-science-ore-to-science",
        energy_required = data.raw["recipe"]["logistic-science-pack"].energy_required, --same time to craft as vanilla science pack
        enabled = false,
        category = "crafting",--basic crafting category, this means tier one assembler and up can craft, or you can craft by hand
        ingredients = {{"logistic-science-ore", leighzermods.leighzerscienceores.logisticRequirement}},
        result = "logistic-science-pack",
        result_count = 1,
        subgroup = "leighzerscienceore",
        order = "z-b"
        }
    })
    table.insert(data.raw["technology"]["logistic-science-pack"].effects, {type = "unlock-recipe",recipe = "logistic-science-ore-to-science"})
    table.insert(leighzermods.leighzerscienceores.productivityEnabledRecipes,'logistic-science-ore-to-science')

end

if leighzermods.leighzerscienceores.militaryEnabled then
    data:extend({
            {
        type = "recipe",
        name = "military-science-ore-to-science",
        energy_required = data.raw["recipe"]["military-science-pack"].energy_required, --same time to craft as vanilla science pack
        enabled = false,
        category = "crafting",--basic crafting category, this means tier one assembler and up can craft, or you can craft by hand
        ingredients = {{"military-science-ore", leighzermods.leighzerscienceores.militaryRequirement}},
        result = "military-science-pack",
        result_count = 1,
        subgroup = "leighzerscienceore",
        order = "z-c"
        }
    })
    table.insert(data.raw["technology"]["military-science-pack"].effects, {type = "unlock-recipe",recipe = "military-science-ore-to-science"})
    table.insert(leighzermods.leighzerscienceores.productivityEnabledRecipes,'military-science-ore-to-science')

end

if leighzermods.leighzerscienceores.chemicalEnabled then
    data:extend({
            {
        type = "recipe",
        name = "chemical-science-ore-to-science",
        energy_required = data.raw["recipe"]["chemical-science-pack"].energy_required, --same time to craft as vanilla science pack
        enabled = false,
        category = "crafting",--basic crafting category, this means tier one assembler and up can craft, or you can craft by hand
        ingredients = {{"chemical-science-ore", leighzermods.leighzerscienceores.chemicalRequirement}},
        result = "chemical-science-pack",
        result_count = 1,
        subgroup = "leighzerscienceore",
        order = "z-d"
        }
    })
    table.insert(data.raw["technology"]["chemical-science-pack"].effects, {type = "unlock-recipe",recipe = "chemical-science-ore-to-science"})
    table.insert(leighzermods.leighzerscienceores.productivityEnabledRecipes,'chemical-science-ore-to-science')

end

if leighzermods.leighzerscienceores.productionEnabled then
    data:extend({
            {
        type = "recipe",
        name = "production-science-ore-to-science",
        energy_required = data.raw["recipe"]["production-science-pack"].energy_required, --same time to craft as vanilla science pack
        enabled = false,
        category = "crafting",--basic crafting category, this means tier one assembler and up can craft, or you can craft by hand
        ingredients = {{"production-science-ore", leighzermods.leighzerscienceores.productionRequirement}},
        result = "production-science-pack",
        result_count = 1,
        subgroup = "leighzerscienceore",
        order = "z-e"
        }
    })
    table.insert(data.raw["technology"]["production-science-pack"].effects, {type = "unlock-recipe",recipe = "production-science-ore-to-science"})
    table.insert(leighzermods.leighzerscienceores.productivityEnabledRecipes,'production-science-ore-to-science')

end

if leighzermods.leighzerscienceores.utilityEnabled then
    data:extend({
            {
        type = "recipe",
        name = "utility-science-ore-to-science",
        energy_required = data.raw["recipe"]["utility-science-pack"].energy_required, --same time to craft as vanilla science pack
        enabled = false,
        category = "crafting",--basic crafting category, this means tier one assembler and up can craft, or you can craft by hand
        ingredients = {{"utility-science-ore", leighzermods.leighzerscienceores.utilityRequirement}},
        result = "utility-science-pack",
        result_count = 1,
        subgroup = "leighzerscienceore",
        order = "z-f"
        }
    })
    table.insert(data.raw["technology"]["utility-science-pack"].effects, {type = "unlock-recipe",recipe = "utility-science-ore-to-science"})
    table.insert(leighzermods.leighzerscienceores.productivityEnabledRecipes,'utility-science-ore-to-science')
end

if leighzermods.leighzerscienceores.spaceEnabled then
    data:extend({
            {
        type = "recipe",
        name = "space-science-ore-to-science",
        energy_required = 50,
        enabled = false,
        category = "crafting",--basic crafting category, this means tier one assembler and up can craft, or you can craft by hand
        ingredients = {{"space-science-ore", leighzermods.leighzerscienceores.spaceRequirement}},
        result = "space-science-pack",
        result_count = 1,
        subgroup = "leighzerscienceore",
        order = "z-g"
        }
    })
    table.insert(data.raw["technology"]["space-science-pack"].effects, {type = "unlock-recipe",recipe = "space-science-ore-to-science"})
    table.insert(leighzermods.leighzerscienceores.productivityEnabledRecipes,'space-science-ore-to-science')
end

if mods["bobtech"] and leighzermods.leighzerscienceores.advancedLogisticEnabled then
    data:extend({
        {
    type = "recipe",
    name = "advanced-logistic-science-ore-to-science",
    energy_required = 21,
    enabled = false,
    category = "crafting",--basic crafting category, this means tier one assembler and up can craft, or you can craft by hand
    ingredients = {{"advanced-logistic-science-ore", leighzermods.leighzerscienceores.advancedLogisticRequirement}},
    result = "advanced-logistic-science-pack",
    result_count = 1,
    subgroup = "leighzerscienceore",
    order = "z-d-a"
    }
})
table.insert(data.raw["technology"]["advanced-logistic-science-pack"].effects, {type = "unlock-recipe",recipe = "advanced-logistic-science-ore-to-science"})
table.insert(leighzermods.leighzerscienceores.productivityEnabledRecipes,"advanced-logistic-science-ore-to-science")
end

--update table add recipes we want to be able to PROD module
--leighzermodds.leighzerscienceores.productivityEnabledRecipes is the list of recipe names we want to allow the use of productivity modules with
for k, v in pairs(data.raw.module) do
    if v.name:find("productivity%-module") and v.limitation then
      for _, recipe in ipairs(leighzermods.leighzerscienceores.productivityEnabledRecipes) do
        if data.raw["recipe"][recipe] then
          table.insert(v.limitation, recipe)
        end
      end
    end
  end