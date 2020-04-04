
function AddResource(resourceName,hasStartingAreaPlacement,order)
  data:extend({   
    {
    type = "resource",
    name = resourceName .. "-science-ore",
    icon = "__leighzerscienceores__/graphics/icons/"..resourceName.."-science-ore.png",
    icon_size = 32,
    flags = {"placeable-neutral"},
    order=order,
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

function AddLogisticScienceOreEntity()  
  data:extend({   
    {
    type = "resource",
    name = "logistic-science-ore",
    icon = "__leighzerscienceores__/graphics/icons/logistic-science-ore.png",
    icon_size = 32,
    flags = {"placeable-neutral"},
    order="z-b",
    map_color = leighzermods.leighzerscienceores.tints["logistic"],--color used for ore patch when viewed from mini map
    localised_name = {"entity-name.logistic-science-ore", "Logistic"},
    localised_description = {"entity-description.logistic-science-ore", "Logistic"},
    minable =
    {     
      mining_particle = "logistic-science-ore-particle",
      mining_time = 1,
      result = "logistic-science-ore"
    },
    collision_box = {{ -0.1, -0.1}, {0.1, 0.1}},
    selection_box = {{ -0.5, -0.5}, {0.5, 0.5}},
    autoplace = resource_autoplace.resource_autoplace_settings{
      name = "logistic-science-ore",      
      order = "x",
      base_density = 10,
      has_starting_area_placement = hasStartingAreaPlacement,      
      regular_rq_factor_multiplier = 1.10,
      starting_rq_factor_multiplier = 1.5
    },
    stage_counts = {15000, 8000, 4000, 2000, 1000, 500, 200, 80},
    stages =
      {
        sheet =
        {
          filename = "__leighzerscienceores__/graphics/entity/ore/logistic-science-ore.png",
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
  AddResource('automation',leighzermods.leighzerscienceores.isStartingAreaEnabled.automation,"z-a")
end
if leighzermods.leighzerscienceores.logisticEnabled then
  AddLogisticScienceOreEntity()
end
if leighzermods.leighzerscienceores.militaryEnabled then
  AddResource('military',leighzermods.leighzerscienceores.isStartingAreaEnabled.military,"z-c")
end
if leighzermods.leighzerscienceores.chemicalEnabled then
  AddResource('chemical',leighzermods.leighzerscienceores.isStartingAreaEnabled.chemical,"z-d")
end
if leighzermods.leighzerscienceores.productionEnabled then
  AddResource('production',leighzermods.leighzerscienceores.isStartingAreaEnabled.production,"z-e")
end
if leighzermods.leighzerscienceores.utilityEnabled then
  AddResource('utility',leighzermods.leighzerscienceores.isStartingAreaEnabled.utility,"z-f")
end
if leighzermods.leighzerscienceores.spaceEnabled then
  AddResource('space',leighzermods.leighzerscienceores.isStartingAreaEnabled.space,"z-g")
end

if mods["bobtech"] and leighzermods.leighzerscienceores.advancedLogisticEnabled then
  data:extend({   
    {
    type = "resource",
    name = "advanced-logistic-science-ore",
    icon = "__leighzerscienceores__/graphics/icons/advanced-logistic-science-ore.png",
    icon_size = 32,
    flags = {"placeable-neutral"},
    order="z-d-a",
    map_color = leighzermods.leighzerscienceores.tints.advancedLogistic,--color used for ore patch when viewed from mini map
    minable =
    {     
      mining_particle = "advanced-logistic-science-ore-particle",
      mining_time = 1,
      result = "advanced-logistic-science-ore"
    },
    collision_box = {{ -0.1, -0.1}, {0.1, 0.1}},
    selection_box = {{ -0.5, -0.5}, {0.5, 0.5}},
    autoplace = resource_autoplace.resource_autoplace_settings{
      name = "advanced-logistic-science-ore",
      order = "x",
      base_density = 10,
      has_starting_area_placement = hasStartingAreaPlacement,      
      regular_rq_factor_multiplier = 1.10,
      starting_rq_factor_multiplier = 1.5
    },

    stage_counts = {15000, 8000, 4000, 2000, 1000, 500, 200, 80},
    stages =
      {
        sheet =
        {
          filename = "__leighzerscienceores__/graphics/entity/ore/advanced-logistic-science-ore.png",
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