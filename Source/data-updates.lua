-- for each science pack
for k,v in pairs(data.raw.tool) do    
    if (not v.leighzerscienceoresDisabled) then

        local sciencePackRecipe = data.raw.recipe[k]
        local itemLaunchedInSpaceYieldsSciencePackRecipe = nil
        local rocketLaunchProductAmount = nil
        for kk,vv in pairs(data.raw.item) do
            -- if there is a rocket launch product and the product is our science pack and there is a direct recipe for the product
            if (vv.rocket_launch_product and vv.rocket_launch_product[1] and vv.rocket_launch_product[1] == k and data.raw.recipe[kk]) then                
                itemLaunchedInSpaceYieldsSciencePackRecipe = data.raw.recipe[kk]
                rocketLaunchProductAmount = vv.rocket_launch_product[2] or 1                
            end
        end

        if (sciencePackRecipe or itemLaunchedInSpaceYieldsSciencePackRecipe) then

            -- going to work off strictly the regular recipe cost (there is a good reason for this)
            local normalRecipeCost = nil
            if (v.leighzerscienceoresCostOverride) then
                normalRecipeCost = v.leighzerscienceoresCostOverride
            elseif (sciencePackRecipe) then
                normalRecipeCost = leighzermods.utils.getTotalRawSum(sciencePackRecipe,false)
            elseif (itemLaunchedInSpaceYieldsSciencePackRecipe) then
                local costToMakeItemToLaunch = leighzermods.utils.getTotalRawSum(itemLaunchedInSpaceYieldsSciencePackRecipe,false)
                local costToLaunchRocket = 0
                if (data.raw.recipe["rocket-part"]) then -- assume recipe "rocket-part" to launch rocket
                    costToLaunchRocket = (leighzermods.utils.getTotalRawSum(data.raw.recipe["rocket-part"],false) * 100) -- assuming 100 parts to launch rocket                    
                end
                normalRecipeCost = (costToMakeItemToLaunch + costToLaunchRocket) / rocketLaunchProductAmount
            end

            normalRecipeCost = math.ceil(normalRecipeCost * leighzermods.leighzerscienceores.scienceOreMultiplier)

            -- if we are less than the ingredient amount limitation (avoids crash)
            
                local tintName = nil
                if (v.leighzerscienceoresOreTintName and leighzermods.tints[v.leighzerscienceoresOreTintName]) then
                    tintName = v.leighzerscienceoresOreTintName
                else
                    tintName = "white"
                end

                local hasStartingAreaPlacement = v.leighzerscienceoresStartingAreaEnabled or false

                local autoplaceSettings = {
                    order = "z",
                    base_density = 10,
                    has_starting_area_placement = hasStartingAreaPlacement,
                    regular_rq_factor_multiplier = 1.10,
                    starting_rq_factor_multiplier = 1.5
                }
                local scienceOreName = k .. "-ore"
                leighzermods.utils.createOreFromGeneric(k,tintName,1,autoplaceSettings,"z-"..v.order)
                data.raw.resource[scienceOreName].leighzermorphiteDisabled = (not leighzermods.leighzerscienceores.morphiteRecipesEnabled)                
                leighzermods.utils.createOreAutoplaceFromGeneric(k,tintName,"z-"..v.order)
                leighzermods.utils.createOreNoiseLayerFromGeneric(k,tintName)
                leighzermods.utils.createOreParticleFromGeneric(k,tintName)
                leighzermods.utils.createItemFromGeneric(k,tintName,"ore","raw-resource","z-"..v.order,50)

                
                local energy_required = nil
                local order = nil
                local enabled = nil
                if (sciencePackRecipe) then
                    energy_required = sciencePackRecipe.energy_required
                    order = sciencePackRecipe.order
                    enabled = sciencePackRecipe.enabled
                else 
                    energy_required = 40 -- assume 40 energy required for launching things into space.. 
                    order = v.order
                    enabled = false
                end

                local makeScienceCrystal = normalRecipeCost > leighzermods.constants.maxIngredientAmount
                local scienceCrystalName = k .. "-crystal"

                if (not enabled) then -- if the science pack recipe is not enabled, it is enabled by tech unlock, search the tech tree, and add science ore recipe to same tech that unlocks science pack
                    for kk,vv in pairs(data.raw.technology) do
                        if (vv.effects) then                            
                            for i, effect in ipairs(vv.effects) do
                                if (effect.type == "unlock-recipe" and ((sciencePackRecipe and effect.recipe == k) or (itemLaunchedInSpaceYieldsSciencePackRecipe and effect.recipe == itemLaunchedInSpaceYieldsSciencePackRecipe.name))) then
                                    table.insert(vv.effects,{type="unlock-recipe",recipe=scienceOreName})
                                    if makeScienceCrystal then
                                        table.insert(vv.effects,{type="unlock-recipe",recipe=scienceCrystalName})
                                    end
                                    enabled = false
                                    data.raw.resource[scienceOreName].leighzermorphiteDependentTechName = vv.name
                                end
                            end
                        end
                    end
                end

                local scienceOreRecipe = {
                    type = "recipe",
                    name = scienceOreName,                    
                    energy_required = energy_required,                
                    ingredients = {{name=scienceOreName,amount=normalRecipeCost % (leighzermods.constants.maxIngredientAmount + 1),type="item"}},
                    result = k,
                    result_count = 1,
                    subgroup = leighzermods.leighzerscienceores.scienceOreRecipeSubgroup,
                    order = order,
                    enabled = enabled,
                    category = "crafting",
                }

                if makeScienceCrystal then                    
                    leighzermods.utils.createItemFromGeneric(k,tintName,"crystal",leighzermods.leighzerscienceores.scienceCrystalRecipeSubgroup,order,50)
                    leighzermods.utils.createRecipe(scienceCrystalName,1,enabled,"crafting",{{name=scienceOreName,amount=leighzermods.constants.maxIngredientAmount,type="item"}},scienceCrystalName,1,leighzermods.leighzerscienceores.scienceCrystalRecipeSubgroup,order,false)
                    local scienceCrystalAmount = math.floor(normalRecipeCost / leighzermods.constants.maxIngredientAmount)
                    if scienceCrystalAmount > leighzermods.constants.maxIngredientAmount then
                        scienceCrystalAmount = leighzermods.constants.maxIngredientAmount
                    end
                    table.insert(scienceOreRecipe.ingredients,{name=scienceCrystalName,amount=scienceCrystalAmount,type="item"})
                end

                data:extend({
                    scienceOreRecipe
                })            
        end        
    end
end