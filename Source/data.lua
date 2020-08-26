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

-- define science ore fields for vanilla science packs (really all that needs to be defined is the ore tint, but other fields are here for reference)
local vanillaSciencePackData = {}
vanillaSciencePackData["automation-science-pack"] = {
    leighzerscienceoresDisabled = false,
    leighzerscienceoresCostOverride = nil,    
    leighzerscienceoresOreTintName = "fire_brick",
    leighzerscienceoresStartingAreaEnabled = true
}
vanillaSciencePackData["logistic-science-pack"] = {
    leighzerscienceoresDisabled = false,
    leighzerscienceoresCostOverride = nil,    
    leighzerscienceoresOreTintName = "lime_green",
    leighzerscienceoresStartingAreaEnabled = true
}
vanillaSciencePackData["military-science-pack"] = {
    leighzerscienceoresDisabled = false,
    leighzerscienceoresCostOverride = nil,    
    leighzerscienceoresOreTintName = "light_slate_gray",
    leighzerscienceoresStartingAreaEnabled = true
}
vanillaSciencePackData["chemical-science-pack"] = {
    leighzerscienceoresDisabled = false,
    leighzerscienceoresCostOverride = nil,    
    leighzerscienceoresOreTintName = "cyan",
    leighzerscienceoresStartingAreaEnabled = false
}
vanillaSciencePackData["production-science-pack"] = {
    leighzerscienceoresDisabled = false,
    leighzerscienceoresCostOverride = nil,    
    leighzerscienceoresOreTintName = "dark_orchid",
    leighzerscienceoresStartingAreaEnabled = false
}
vanillaSciencePackData["utility-science-pack"] = {
    leighzerscienceoresDisabled = false,
    leighzerscienceoresCostOverride = nil,    
    leighzerscienceoresOreTintName = "golden_rod",
    leighzerscienceoresStartingAreaEnabled = false    
}
vanillaSciencePackData["space-science-pack"] = {
    leighzerscienceoresDisabled = false,
    leighzerscienceoresCostOverride = nil,    
    leighzerscienceoresOreTintName = "white",
    leighzerscienceoresStartingAreaEnabled = false
}

for k,v in pairs(data.raw.tool) do -- for each science pack item
    if (vanillaSciencePackData[k]) then -- if we have data for it
        for kk,vv in pairs(vanillaSciencePackData[k]) do
            if (v[kk] == nil) then -- if there isn't already a value there
                v[kk] = vv -- load each field into the item prototype
                -- our dynamic resource creator will examine these in data-updates.lua and use them to make decisions 
            end
        end
    end
end