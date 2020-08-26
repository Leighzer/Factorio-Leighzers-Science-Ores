data:extend(
{  --prototypes for mod settings menu
    {
        type = "double-setting",
        name = "scienceOreMultiplier",
        setting_type = "startup",
        default_value = 1,
        minimum_value = 0.1,
        order = "a"
    }
})

if mods["leighzermorphite"] then
    data:extend({
        {
            type = "bool-setting",
            name = "morphiteRecipesEnabled",
            setting_type = "startup",
            default_value = true,
            order = "b"
        }
    })
end