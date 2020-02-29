

if bobmods and bobmods.tech then
    --update graphics
    if settings.startup["bobmods-tech-colorupdate"].value == true then
        if leighzermods.leighzerscienceores.automationEnabled then
            automationScienceResource = data.raw['resource']['automation-science-ore']
            automationScienceResource.icon = "__leighzerscienceores__/graphics/icons/utility-science-ore.png"
            automationScienceResource.map_color = leighzermods.leighzerscienceores.tints.utility                        
            automationScienceResource.stages.sheet.filename = "__leighzerscienceores__/graphics/entity/ore/utility-science-ore.png"

            automationScienceOreParticle = data.raw["optimized-particle"]["automation-science-ore-particle"]
            automationScienceOreParticle.pictures[1].filename = "__leighzerscienceores__/graphics/entity/ore-particle/utility-science-ore-particle-1.png"          
            automationScienceOreParticle.pictures[2].filename = "__leighzerscienceores__/graphics/entity/ore-particle/utility-science-ore-particle-2.png"           
            automationScienceOreParticle.pictures[3].filename = "__leighzerscienceores__/graphics/entity/ore-particle/utility-science-ore-particle-3.png"           
            automationScienceOreParticle.pictures[4].filename = "__leighzerscienceores__/graphics/entity/ore-particle/utility-science-ore-particle-4.png"        

            automationScienceItem = data.raw['item']['automation-science-ore']
            automationScienceItem.icon = "__leighzerscienceores__/graphics/icons/utility-science-ore.png"
        end

        if leighzermods.leighzerscienceores.logisticEnabled then
            logisticScienceResource = data.raw['resource']['logistic-science-ore']
            logisticScienceResource.icon = "__leighzerscienceores__/graphics/icons/automation-science-ore.png"
            logisticScienceResource.map_color = leighzermods.leighzerscienceores.tints.automation            
            logisticScienceResource.stages.sheet.filename = "__leighzerscienceores__/graphics/entity/ore/automation-science-ore.png"

            logisticScienceOreParticle = data.raw["optimized-particle"]["logistic-science-ore-particle"]
            logisticScienceOreParticle.pictures[1].filename = "__leighzerscienceores__/graphics/entity/ore-particle/automation-science-ore-particle-1.png"          
            logisticScienceOreParticle.pictures[2].filename = "__leighzerscienceores__/graphics/entity/ore-particle/automation-science-ore-particle-2.png"           
            logisticScienceOreParticle.pictures[3].filename = "__leighzerscienceores__/graphics/entity/ore-particle/automation-science-ore-particle-3.png"           
            logisticScienceOreParticle.pictures[4].filename = "__leighzerscienceores__/graphics/entity/ore-particle/automation-science-ore-particle-4.png"        

            logisticScienceItem = data.raw['item']['logistic-science-ore']
            logisticScienceItem.icon = "__leighzerscienceores__/graphics/icons/automation-science-ore.png"
        end

        if leighzermods.leighzerscienceores.utilityEnabled then
            utilityScienceResource = data.raw['resource']['utility-science-ore']
            utilityScienceResource.icon = "__leighzerscienceores__/graphics/icons/logistic-science-ore.png"
            utilityScienceResource.map_color = leighzermods.leighzerscienceores.tints.logistic            
            utilityScienceResource.stages.sheet.filename = "__leighzerscienceores__/graphics/entity/ore/logistic-science-ore.png"

            utilityScienceOreParticle = data.raw["optimized-particle"]["utility-science-ore-particle"]
            utilityScienceOreParticle.pictures[1].filename = "__leighzerscienceores__/graphics/entity/ore-particle/logistic-science-ore-particle-1.png"          
            utilityScienceOreParticle.pictures[2].filename = "__leighzerscienceores__/graphics/entity/ore-particle/logistic-science-ore-particle-2.png"           
            utilityScienceOreParticle.pictures[3].filename = "__leighzerscienceores__/graphics/entity/ore-particle/logistic-science-ore-particle-3.png"           
            utilityScienceOreParticle.pictures[4].filename = "__leighzerscienceores__/graphics/entity/ore-particle/logistic-science-ore-particle-4.png"        

            utilityScienceItem = data.raw['item']['utility-science-ore']
            utilityScienceItem.icon = "__leighzerscienceores__/graphics/icons/logistic-science-ore.png"
        end
    end

    --locale updates
    data.raw["item"]["logistic-science-ore"].localised_name = {"item-name.logistic-science-ore","Transport"}
    data.raw["resource"]["logistic-science-ore"].localised_name = {"entity-name.logistic-science-ore","Transport"}
    data.raw["resource"]["logistic-science-ore"].localised_description = {"entity-description.logistic-science-ore","Transport"}
    --data.raw["autoplace-control"]["logistic-science-ore"].localised_name = {"autoplace-control-names.logistic-science-ore","Transport"} no renaming of autoplace due to possible bug changing the localised name???    
    
    --update crafting times to match bob's updated crafting times
    if leighzermods.leighzerscienceores.automationEnabled then
        data.raw['recipe']['automation-science-ore-to-science'].energy_required = data.raw['recipe']['automation-science-pack'].energy_required
    end
    if leighzermods.leighzerscienceores.logisticEnabled then
        data.raw['recipe']['logistic-science-ore-to-science'].energy_required = data.raw['recipe']['logistic-science-pack'].energy_required
    end
    if leighzermods.leighzerscienceores.militaryEnabled then
        data.raw['recipe']['military-science-ore-to-science'].energy_required = data.raw['recipe']['military-science-pack'].energy_required
    end
    if leighzermods.leighzerscienceores.chemicalEnabled then
        data.raw['recipe']['chemical-science-ore-to-science'].energy_required = data.raw['recipe']['chemical-science-pack'].energy_required
    end
    if leighzermods.leighzerscienceores.productionEnabled then
        data.raw['recipe']['production-science-ore-to-science'].energy_required = data.raw['recipe']['production-science-pack'].energy_required
    end
    if leighzermods.leighzerscienceores.utilityEnabled then
        data.raw['recipe']['utility-science-ore-to-science'].energy_required = data.raw['recipe']['utility-science-pack'].energy_required
    end
end
