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
        name = "isAutomationScienceOreEnabled",
        setting_type = "startup",
        default_value = true,
        order = "b"
    },
    {
        type = "int-setting",
        name = "AutomationScienceOreRequirement",
        setting_type = "startup",
        default_value = 1,
        minimum_value = 1,
        maximum_value = 100000,
        order = "c"
    },  
    {
        type = "bool-setting",
        name = "isMilitaryScienceOreEnabled",
        setting_type = "startup",
        default_value = true,
        order = "f"
    },
    {
        type = "int-setting",
        name = "MilitaryScienceOreRequirement",
        setting_type = "startup",
        default_value = 25,
        minimum_value = 1,
        maximum_value = 100000,
        order = "g"
    },
    {
        type = "bool-setting",
        name = "isChemicalScienceOreEnabled",
        setting_type = "startup",
        default_value = true,
        order = "h"
    },
    {
        type = "int-setting",
        name = "ChemicalScienceOreRequirement",
        setting_type = "startup",
        default_value = 100,
        minimum_value = 1,
        maximum_value = 100000,
        order = "i"
    },

    {
        type = "bool-setting",
        name = "isProductionScienceOreEnabled",
        setting_type = "startup",
        default_value = true,
        order = "j"
    },
    {
        type = "int-setting",
        name = "ProductionScienceOreRequirement",
        setting_type = "startup",
        default_value = 250,
        minimum_value = 1,
        maximum_value = 100000,
        order = "k"
    },

    {
        type = "bool-setting",
        name = "isUtilityScienceOreEnabled",
        setting_type = "startup",
        default_value = true,
        order = "l"
    },
    {
        type = "int-setting",
        name = "UtilityScienceOreRequirement",
        setting_type = "startup",
        default_value = 500,
        minimum_value = 1,
        maximum_value = 100000,
        order = "m"
    },

    {
        type = "bool-setting",
        name = "isSpaceScienceOreEnabled",
        setting_type = "startup",
        default_value = true,
        order = "n"
    },
    {
        type = "int-setting",
        name = "SpaceScienceOreRequirement",
        setting_type = "startup",
        default_value = 1000,
        minimum_value = 1,
        maximum_value = 100000,
        order = "o"
    },
})

if mods["bobtech"] then
    data:extend({        
        {
            type = "bool-setting",
            name = "isAdvancedLogisticScienceOreEnabled",
            setting_type = "startup",
            default_value = true,
            order = "i-a"
        },
        {
            type = "int-setting",
            name = "AdvancedLogisticScienceOreRequirement",
            setting_type = "startup",
            default_value = 175,
            minimum_value = 1,
            maximum_value = 100000,
            order = "i-b"
        },
        {
            type = "bool-setting",
            name = "isLogisticScienceOreEnabled",
            setting_type = "startup",
            default_value = true,
            order = "d",
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
            order = "e",
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
            order = "d",
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
            order = "e",
            localised_name = {"mod-setting-name.LogisticScienceOreRequirement", "Logistic"}

        }
    })    
end





