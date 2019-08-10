require("bobtech-updates")

function MakeScienceResourceInfinite(resource)
    resource.infinite = true
    resource.minimum = 50
    resource.normal = 250
    resource.infinite_depletion_amount = 1
    resource.resource_patch_search_radius = 12
end

--for each item in data.raw
if leighzermods.leighzerscienceores.infiniteScienceOre == true then
    for k, v in pairs(data.raw["resource"]) do
        if string.find(k,"%-science%-ore") then --if the name contains "science-ore"
            MakeScienceResourceInfinite(v)--make it infinite
        end
    end
end