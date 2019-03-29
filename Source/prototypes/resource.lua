
function AddResource(resourceName, mapColor)
  data:extend({   
    {
    type = "resource",
    name = resourceName .. "-science-ore",
    icons = {{icon = "__leighzerscienceores__/graphics/icons/"..resourceName.."-science-ore.png"}},
    icon_size = 32,
    flags = {"placeable-neutral"},
    order="h",
    map_color = mapColor,--color used for ore patch when viewed from mini map
    minable =
    {     
      mining_particle = resourceName.."-science-ore-particle",
      mining_time = 1,
      result = resourceName.."-science-ore"
    },
    collision_box = {{ -0.1, -0.1}, {0.1, 0.1}},
    selection_box = {{ -0.5, -0.5}, {0.5, 0.5}},
    autoplace =
    {
      order = "x",
      name = resourceName .. "-science-ore",
      sharpness = 15/16,
      richness_multiplier = leighzermods.leighzerscienceores.richness_multiplier,
      richness_base = leighzermods.leighzerscienceores.richness_base,
      richness_multiplier_distance_bonus = 20,
      coverage = leighzermods.leighzerscienceores.coverage,
      peaks =
      {
        {
          noise_layer = resourceName .. "-science-ore",
          noise_octaves_difference = -0.85,
          noise_persistence = 0.4
        }
      },    
    },
    stage_counts = {15000, 8000, 4000, 2000, 1000, 500, 200, 80},
    stages =
      {
        sheet =
        {
          filename = "__leighzerscienceores__/graphics/entity/ore/"..resourceName.."-science-ore.png",          
          priority = "extra-high",
          width = 64,
          height = 64,
          frame_count = 8,
          variation_count = 8,        
        }
      },
    }
  })
end

if leighzermods.leighzerscienceores.automationEnabled then
  AddResource('automation',leighzermods.leighzerscienceores.tints.automation)
end
if leighzermods.leighzerscienceores.logisticEnabled then
  AddResource('logistic',leighzermods.leighzerscienceores.tints.logistic)
end
if leighzermods.leighzerscienceores.militaryEnabled then
  AddResource('military',leighzermods.leighzerscienceores.tints.military)
end
if leighzermods.leighzerscienceores.chemicalEnabled then
  AddResource('chemical',leighzermods.leighzerscienceores.tints.chemical)
end
if leighzermods.leighzerscienceores.productionEnabled then
  AddResource('production',leighzermods.leighzerscienceores.tints.production)
end
if leighzermods.leighzerscienceores.utilityEnabled then
  AddResource('utility',leighzermods.leighzerscienceores.tints.utility)
end
if leighzermods.leighzerscienceores.spaceEnabled then
  AddResource('space',leighzermods.leighzerscienceores.tints.space)
end