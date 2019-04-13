
function AddResource(resourceName)
  data:extend({   
    {
    type = "resource",
    name = resourceName .. "-science-ore",
    icon = "__leighzerscienceores__/graphics/icons/"..resourceName.."-science-ore.png",
    icon_size = 32,
    flags = {"placeable-neutral"},
    order="h",
    map_color = leighzermods.leighzerscienceores.tints[resourceName],--color used for ore patch when viewed from mini map
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
      control = resourceName.."-science-ore",
      coverage = 0.0027090909090909094,
      order = "x",
      peaks = GetPeak(resourceName,leighzermods.leighzerscienceores.isStartingAreaEnabled[resourceName]),
      richness_base = 10,
      richness_multiplier = 1500,
      richness_multiplier_distance_bonus = 20,
      sharpness = 0.9375,      
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

function GetPeak(resourceName,isStartingAreaEnabled)

  local peak = {}
  if isStartingAreaEnabled then
    peak = {
      {
        noise_layer = resourceName.."-science-ore",
        noise_octaves_difference = -0.85,
        noise_persistence = 0.4
      }
    }
  else
    peak = {
      {
        noise_layer = resourceName.."-science-ore",
        noise_octaves_difference = -0.85,
        noise_persistence = 0.4
      },
      {
        influence = -1,
        starting_area_weight_max_range = 2,
        starting_area_weight_optimal = 1,
        starting_area_weight_range = 0
      }
    }
  end
    return peak

end

if leighzermods.leighzerscienceores.automationEnabled then
  AddResource('automation')
end
if leighzermods.leighzerscienceores.logisticEnabled then
  AddResource('logistic')
end
if leighzermods.leighzerscienceores.militaryEnabled then
  AddResource('military')
end
if leighzermods.leighzerscienceores.chemicalEnabled then
  AddResource('chemical')
end
if leighzermods.leighzerscienceores.productionEnabled then
  AddResource('production')
end
if leighzermods.leighzerscienceores.utilityEnabled then
  AddResource('utility')
end
if leighzermods.leighzerscienceores.spaceEnabled then
  AddResource('space')
end