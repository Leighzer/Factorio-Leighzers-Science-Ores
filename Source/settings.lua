data:extend(
{  --prototypes for mod settings menu
    {
        type = "bool-setting",
        name = "excludeHighTechOresFromStartingArea",
        setting_type = "startup",
        default_value = true,
        order = "a"
    },
    {
        type = "bool-setting",
        name = "infiniteScienceOre",
        setting_type = "startup",
        default_value = false,
        order = "b"
    },
    {
        type = "bool-setting",
        name = "isAutomationScienceOreEnabled",
        setting_type = "startup",
        default_value = true,
        order = "c"
    },
    {
        type = "int-setting",
        name = "AutomationScienceOreRequirement",
        setting_type = "startup",
        default_value = 1,
        minimum_value = 1,
        maximum_value = 100000,
        order = "d"
    },  
    {
        type = "bool-setting",
        name = "isMilitaryScienceOreEnabled",
        setting_type = "startup",
        default_value = true,
        order = "g"
    },
    {
        type = "int-setting",
        name = "MilitaryScienceOreRequirement",
        setting_type = "startup",
        default_value = 25,
        minimum_value = 1,
        maximum_value = 100000,
        order = "h"
    },
    {
        type = "bool-setting",
        name = "isChemicalScienceOreEnabled",
        setting_type = "startup",
        default_value = true,
        order = "i"
    },
    {
        type = "int-setting",
        name = "ChemicalScienceOreRequirement",
        setting_type = "startup",
        default_value = 100,
        minimum_value = 1,
        maximum_value = 100000,
        order = "j"
    },

    {
        type = "bool-setting",
        name = "isProductionScienceOreEnabled",
        setting_type = "startup",
        default_value = true,
        order = "k"
    },
    {
        type = "int-setting",
        name = "ProductionScienceOreRequirement",
        setting_type = "startup",
        default_value = 250,
        minimum_value = 1,
        maximum_value = 100000,
        order = "l"
    },

    {
        type = "bool-setting",
        name = "isUtilityScienceOreEnabled",
        setting_type = "startup",
        default_value = true,
        order = "m"
    },
    {
        type = "int-setting",
        name = "UtilityScienceOreRequirement",
        setting_type = "startup",
        default_value = 500,
        minimum_value = 1,
        maximum_value = 100000,
        order = "n"
    },

    {
        type = "bool-setting",
        name = "isSpaceScienceOreEnabled",
        setting_type = "startup",
        default_value = true,
        order = "o"
    },
    {
        type = "int-setting",
        name = "SpaceScienceOreRequirement",
        setting_type = "startup",
        default_value = 1000,
        minimum_value = 1,
        maximum_value = 100000,
        order = "p"
    },
})

if mods["bobtech"] then
    data:extend({        
        {
            type = "bool-setting",
            name = "isAdvancedLogisticScienceOreEnabled",
            setting_type = "startup",
            default_value = true,
            order = "h-a"
        },
        {
            type = "int-setting",
            name = "AdvancedLogisticScienceOreRequirement",
            setting_type = "startup",
            default_value = 175,
            minimum_value = 1,
            maximum_value = 100000,
            order = "h-b"
        },
        {
            type = "bool-setting",
            name = "isLogisticScienceOreEnabled",
            setting_type = "startup",
            default_value = true,
            order = "e",
            localised_name = {"mod-setting-name.isLogisticScienceOreEnabled", "Transport"},
            localised_description = {"mod-setting-description.isLogisticScienceOreEnabled", "Transport"}
        },
        {
            type = "int-setting",
            name = "LogisticScienceOreRequirement",
            setting_type = "startup",
            default_value = 10,
            minimum_value = 1,
            maximum_value = 100000,
            order = "f",
            localised_name = {"mod-setting-name.LogisticScienceOreRequirement", "Transport"}
        },        
    })

else
    data:extend({
        {
            type = "bool-setting",
            name = "isLogisticScienceOreEnabled",
            setting_type = "startup",
            default_value = true,
            order = "e",
            localised_name = {"mod-setting-name.isLogisticScienceOreEnabled", "Logistic"},
            localised_description = {"mod-setting-description.isLogisticScienceOreEnabled", "Logistic"}
        },
        {
            type = "int-setting",
            name = "LogisticScienceOreRequirement",
            setting_type = "startup",
            default_value = 10,
            minimum_value = 1,
            maximum_value = 100000,
            order = "f",
            localised_name = {"mod-setting-name.LogisticScienceOreRequirement", "Logistic"}

        }
    })    
end





