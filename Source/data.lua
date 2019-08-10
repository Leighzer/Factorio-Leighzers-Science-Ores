if not leighzermods then --generic mod variable to store information that may be needed later
    leighzermods = {}
end

if not leighzermods.leighzerscienceores then
    leighzermods.leighzerscienceores = {} 

    leighzermods.leighzerscienceores.tints = {}
    leighzermods.leighzerscienceores.tints.automation = {r=219/255, g=50/255, b=50/255, a = 1} -- 219, 50, 50 these commented values are what I used for making the graphics mostly for my own reference
    leighzermods.leighzerscienceores.tints.logistic = {r=149/255, g=206/255, b=129/255, a = 1} --37.1, 64.1, 27.6
    leighzermods.leighzerscienceores.tints.military = {r=135/255, g=146/255, b=155/255, a = 1} --47.9, 51.3, 54.0
    leighzermods.leighzerscienceores.tints.chemical = {r=97/255, g=216/255, b=234/255, a = 1} --8.6,64.2,76.5
    leighzermods.leighzerscienceores.tints.production = {r=152/255, g=26/255, b=202/255, a = 1}--71.6,0.0,100
    leighzermods.leighzerscienceores.tints.utility = {r=208/255, g=177/255, b=20/255, a = 1}--71.6,60.9,6.9
    leighzermods.leighzerscienceores.tints.space = {r=222/255, g=222/255, b=222/255, a = 1}--57.3,57.3,57.3
    leighzermods.leighzerscienceores.tints.advancedLogistic = {r=1,g=0.1,b=1, a=1}--100, 0, 66.7

    leighzermods.leighzerscienceores.automationEnabled = settings.startup["isAutomationScienceOreEnabled"].value
    leighzermods.leighzerscienceores.logisticEnabled = settings.startup["isLogisticScienceOreEnabled"].value
    leighzermods.leighzerscienceores.militaryEnabled = settings.startup["isMilitaryScienceOreEnabled"].value
    leighzermods.leighzerscienceores.chemicalEnabled = settings.startup["isChemicalScienceOreEnabled"].value
    leighzermods.leighzerscienceores.productionEnabled = settings.startup["isProductionScienceOreEnabled"].value
    leighzermods.leighzerscienceores.utilityEnabled = settings.startup["isUtilityScienceOreEnabled"].value
    leighzermods.leighzerscienceores.spaceEnabled = settings.startup["isSpaceScienceOreEnabled"].value
    if mods["bobtech"] then
        leighzermods.leighzerscienceores.advancedLogisticEnabled = settings.startup["isAdvancedLogisticScienceOreEnabled"].value
    end

    leighzermods.leighzerscienceores.automationRequirement = settings.startup["AutomationScienceOreRequirement"].value
    leighzermods.leighzerscienceores.logisticRequirement = settings.startup["LogisticScienceOreRequirement"].value
    leighzermods.leighzerscienceores.militaryRequirement = settings.startup["MilitaryScienceOreRequirement"].value
    leighzermods.leighzerscienceores.chemicalRequirement = settings.startup["ChemicalScienceOreRequirement"].value
    leighzermods.leighzerscienceores.productionRequirement = settings.startup["ProductionScienceOreRequirement"].value
    leighzermods.leighzerscienceores.utilityRequirement = settings.startup["UtilityScienceOreRequirement"].value
    leighzermods.leighzerscienceores.spaceRequirement = settings.startup["SpaceScienceOreRequirement"].value
    if mods["bobtech"] then
        leighzermods.leighzerscienceores.advancedLogisticRequirement = settings.startup["AdvancedLogisticScienceOreRequirement"].value
    end

    leighzermods.leighzerscienceores.excludeHighTechOresFromStartingArea = settings.startup["excludeHighTechOresFromStartingArea"].value
    leighzermods.leighzerscienceores.isStartingAreaEnabled = {}

    if leighzermods.leighzerscienceores.excludeHighTechOresFromStartingArea then
        leighzermods.leighzerscienceores.isStartingAreaEnabled.automation = true
        leighzermods.leighzerscienceores.isStartingAreaEnabled.logistic = true
        leighzermods.leighzerscienceores.isStartingAreaEnabled.military = true
        leighzermods.leighzerscienceores.isStartingAreaEnabled.chemical = true
        leighzermods.leighzerscienceores.isStartingAreaEnabled.production = false
        leighzermods.leighzerscienceores.isStartingAreaEnabled.utility = false
        leighzermods.leighzerscienceores.isStartingAreaEnabled.space = false
        if mods["bobtech"] then
            leighzermods.leighzerscienceores.isStartingAreaEnabled.advancedLogistic = false
        end
    else
        leighzermods.leighzerscienceores.isStartingAreaEnabled.automation = true
        leighzermods.leighzerscienceores.isStartingAreaEnabled.logistic = true
        leighzermods.leighzerscienceores.isStartingAreaEnabled.military = true
        leighzermods.leighzerscienceores.isStartingAreaEnabled.chemical = true
        leighzermods.leighzerscienceores.isStartingAreaEnabled.production = true
        leighzermods.leighzerscienceores.isStartingAreaEnabled.utility = true
        leighzermods.leighzerscienceores.isStartingAreaEnabled.space = true
        if mods["bobtech"] then
            leighzermods.leighzerscienceores.isStartingAreaEnabled.advancedLogistic = true
        end
    end

    leighzermods.leighzerscienceores.infiniteScienceOre = settings.startup["infiniteScienceOre"].value
end

if not leighzermods.leighzerscienceores.productivityEnabledRecipes then --list of recipe names that are going to get productivity modules enabled
    leighzermods.leighzerscienceores.productivityEnabledRecipes = {}
end

require("prototypes.resource")
require("prototypes.particle")
require("prototypes.mapgen")


require("prototypes.category")
require("prototypes.item")
require("prototypes.recipe")




