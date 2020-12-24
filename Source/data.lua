if not leighzermods then --generic mod variable to store information that may be needed later
    leighzermods = {}
end

if not leighzermods.leighzerscienceores then
    leighzermods.leighzerscienceores = {}     

    leighzermods.leighzerscienceores.scienceCrystalRecipeSubgroup = "leighzerscienceores-crystal"
    leighzermods.leighzerscienceores.scienceCrystalRecipeSubgroupOrder = "h"    

    leighzermods.leighzerscienceores.scienceOreRecipeSubgroup = "leighzerscienceores"    
    leighzermods.leighzerscienceores.scienceOreRecipeSubgroupOrder = "i"

    leighzermods.leighzerscienceores.scienceOreMultiplier = settings.startup["scienceOreMultiplier"].value
    if mods["leighzermorphite"] then
        leighzermods.leighzerscienceores.morphiteRecipesEnabled = settings.startup["morphiteRecipesEnabled"].value
    else
        leighzermods.leighzerscienceores.morphiteRecipesEnabled = false
    end
    
end

-- row in crafting tab for science crystals for the very expensive science pack recipes
leighzermods.utils.createItemSubgroup(leighzermods.leighzerscienceores.scienceCrystalRecipeSubgroup,"intermediate-products",leighzermods.leighzerscienceores.scienceCrystalRecipeSubgroupOrder)
-- row in crafting tab for alternate science pack recipes 
leighzermods.utils.createItemSubgroup(leighzermods.leighzerscienceores.scienceOreRecipeSubgroup,"intermediate-products",leighzermods.leighzerscienceores.scienceOreRecipeSubgroupOrder)

-- define science ore fields for vanilla science packs
local vanillaSciencePackData = {}
vanillaSciencePackData["automation-science-pack"] = {
    disabled = false,
    costOverride = nil,    
    oreTintName = "fire_brick",
    startingAreaEnabled = true
}
vanillaSciencePackData["logistic-science-pack"] = {
    disabled = false,
    costOverride = nil,    
    oreTintName = "lime_green",
    startingAreaEnabled = true
}
vanillaSciencePackData["military-science-pack"] = {
    disabled = false,
    costOverride = nil,    
    oreTintName = "light_slate_gray",
    startingAreaEnabled = true
}
vanillaSciencePackData["chemical-science-pack"] = {
    disabled = false,
    costOverride = nil,    
    oreTintName = "cyan",
    startingAreaEnabled = false
}
vanillaSciencePackData["production-science-pack"] = {
    disabled = false,
    costOverride = nil,    
    oreTintName = "dark_orchid",
    startingAreaEnabled = false
}
vanillaSciencePackData["utility-science-pack"] = {
    disabled = false,
    costOverride = nil,    
    oreTintName = "golden_rod",
    startingAreaEnabled = false    
}
vanillaSciencePackData["space-science-pack"] = {
    disabled = false,
    costOverride = nil,    
    oreTintName = "white",
    startingAreaEnabled = false
}

for k,v in pairs(data.raw.tool) do -- for each science pack item
    if (vanillaSciencePackData[k]) then -- if we have data for it
        v.leighzerscienceores = vanillaSciencePackData[k] -- load science ore data into the science pack item
    end
end