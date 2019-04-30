

if bobmods and bobmods.tech then
    --update graphics
    if settings.startup["bobmods-tech-colorupdate"].value == true then
        if leighzermods.leighzerscienceores.automationEnabled then
            automationScienceResource = data.raw['resource']['automation-science-ore']
            automationScienceResource.icon = "__leighzerscienceores__/graphics/icons/utility-science-ore.png"
            automationScienceResource.map_color = leighzermods.leighzerscienceores.tints.utility
            automationScienceResource.minable.mining_particle = "utility-science-ore-particle"
            automationScienceResource.stages.sheet.filename = "__leighzerscienceores__/graphics/entity/ore/utility-science-ore.png"

            automationScienceItem = data.raw['item']['automation-science-ore']
            automationScienceItem.icon = "__leighzerscienceores__/graphics/icons/utility-science-ore.png"
        end

        if leighzermods.leighzerscienceores.automationEnabled then
            logisticScienceResource = data.raw['resource']['logistic-science-ore']
            logisticScienceResource.icon = "__leighzerscienceores__/graphics/icons/automation-science-ore.png"
            logisticScienceResource.map_color = leighzermods.leighzerscienceores.tints.automation
            logisticScienceResource.minable.mining_particle = "automation-science-ore-particle"
            logisticScienceResource.stages.sheet.filename = "__leighzerscienceores__/graphics/entity/ore/automation-science-ore.png"

            logisticScienceItem = data.raw['item']['logistic-science-ore']
            logisticScienceItem.icon = "__leighzerscienceores__/graphics/icons/automation-science-ore.png"
        end

        if leighzermods.leighzerscienceores.automationEnabled then
            utilityScienceResource = data.raw['resource']['utility-science-ore']
            utilityScienceResource.icon = "__leighzerscienceores__/graphics/icons/logistic-science-ore.png"
            utilityScienceResource.map_color = leighzermods.leighzerscienceores.tints.logistic
            utilityScienceResource.minable.mining_particle = "logistic-science-ore-particle"
            utilityScienceResource.stages.sheet.filename = "__leighzerscienceores__/graphics/entity/ore/logistic-science-ore.png"

            utilityScienceItem = data.raw['item']['utility-science-ore']
            utilityScienceItem.icon = "__leighzerscienceores__/graphics/icons/logistic-science-ore.png"
        end
    end

    --update crafting times to match bob's updated crafting times
    data.raw['recipe']['automation-science-ore-to-science'].energy_required = data.raw['recipe']['automation-science-pack'].energy_required
    data.raw['recipe']['logistic-science-ore-to-science'].energy_required = data.raw['recipe']['logistic-science-pack'].energy_required
    data.raw['recipe']['military-science-ore-to-science'].energy_required = data.raw['recipe']['military-science-pack'].energy_required
    data.raw['recipe']['chemical-science-ore-to-science'].energy_required = data.raw['recipe']['chemical-science-pack'].energy_required
    data.raw['recipe']['production-science-ore-to-science'].energy_required = data.raw['recipe']['production-science-pack'].energy_required
    data.raw['recipe']['utility-science-ore-to-science'].energy_required = data.raw['recipe']['utility-science-pack'].energy_required
end
