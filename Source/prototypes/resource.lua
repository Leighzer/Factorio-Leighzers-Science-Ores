
function AddResource(resourceName,hasStartingAreaPlacement)
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
    autoplace = resource_autoplace.resource_autoplace_settings{
      name = resourceName.."-science-ore",
      order = "x",
      base_density = 10,
      has_starting_area_placement = hasStartingAreaPlacement,
      resource_index = resource_autoplace.get_next_resource_index() + 64,
      regular_rq_factor_multiplier = 1.10,
      starting_rq_factor_multiplier = 1.5
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
  AddResource('automation',leighzermods.leighzerscienceores.isStartingAreaEnabled.automation)
end
if leighzermods.leighzerscienceores.logisticEnabled then
  AddResource('logistic',leighzermods.leighzerscienceores.isStartingAreaEnabled.logistic)
end
if leighzermods.leighzerscienceores.militaryEnabled then
  AddResource('military',leighzermods.leighzerscienceores.isStartingAreaEnabled.military)
end
if leighzermods.leighzerscienceores.chemicalEnabled then
  AddResource('chemical',leighzermods.leighzerscienceores.isStartingAreaEnabled.chemical)
end
if leighzermods.leighzerscienceores.productionEnabled then
  AddResource('production',leighzermods.leighzerscienceores.isStartingAreaEnabled.production)
end
if leighzermods.leighzerscienceores.utilityEnabled then
  AddResource('utility',leighzermods.leighzerscienceores.isStartingAreaEnabled.utility)
end
if leighzermods.leighzerscienceores.spaceEnabled then
  AddResource('space',leighzermods.leighzerscienceores.isStartingAreaEnabled.space)
end