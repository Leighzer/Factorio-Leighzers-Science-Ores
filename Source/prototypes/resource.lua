
if leighzermods.leighzerscienceores.automationEnabled then
  data:extend({   
    {
    type = "resource",
    name = "automation-science-ore",
    icons = {{icon = "__leighzerscienceores__/graphics/icons/ore.png", tint= leighzermods.leighzerscienceores.tints.automation}},
    icon_size = 32,
    flags = {"placeable-neutral"},
    order="h",
    map_color = leighzermods.leighzerscienceores.tints.automation,--color used for ore patch when viewed from mini map
    minable =
    {     
      mining_particle = "automation-science-ore-particle",
      mining_time = 1,
      result = "automation-science-ore"
    },
    collision_box = {{ -0.1, -0.1}, {0.1, 0.1}},
    selection_box = {{ -0.5, -0.5}, {0.5, 0.5}},
    autoplace =
    {
      order = "x",
      control = "automation-science-ore",
      sharpness = 15/16,
      richness_multiplier = leighzermods.leighzerscienceores.richness_multiplier,
      richness_base = leighzermods.leighzerscienceores.richness_base,
      richness_multiplier_distance_bonus = 20,
      coverage = leighzermods.leighzerscienceores.coverage,
      peaks =
      {
        {
          noise_layer = "automation-science-ore",
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
          filename = "__leighzerscienceores__/graphics/entity/ore/ore.png",
          tint = leighzermods.leighzerscienceores.tints.automation,--the graphic is actually gray scaled, so we use a tint to make it the color we want
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

if leighzermods.leighzerscienceores.logisticEnabled then
  data:extend({  
  {
    type = "resource",
    name = "logistic-science-ore",
    icons = {{icon = "__leighzerscienceores__/graphics/icons/ore.png", tint= leighzermods.leighzerscienceores.tints.logistic}},
    icon_size = 32,
    flags = {"placeable-neutral"},
    order="h",
    map_color = leighzermods.leighzerscienceores.tints.logistic,--color used for ore patch when viewed from mini map
    minable =
    {     
      mining_particle = "logistic-science-ore-particle",
      mining_time = 1,
      result = "logistic-science-ore"
    },
    collision_box = {{ -0.1, -0.1}, {0.1, 0.1}},
    selection_box = {{ -0.5, -0.5}, {0.5, 0.5}},
    autoplace =
    {
      order = "x",
      control = "logistic-science-ore",
      sharpness = 15/16,
      richness_multiplier = leighzermods.leighzerscienceores.richness_multiplier,
      richness_base = leighzermods.leighzerscienceores.richness_base,
      richness_multiplier_distance_bonus = 20,
      coverage = leighzermods.leighzerscienceores.coverage,
      peaks =
     {
       {
         noise_layer = "logistic-science-ore",
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
         filename = "__leighzerscienceores__/graphics/entity/ore/ore.png",
         tint = leighzermods.leighzerscienceores.tints.logistic,--the graphic is actually gray scaled, so we use a tint to make it the color we want
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

if leighzermods.leighzerscienceores.militaryEnabled then
  data:extend({ 
   {
    type = "resource",
    name = "military-science-ore",
    icons = {{icon = "__leighzerscienceores__/graphics/icons/ore.png", tint= leighzermods.leighzerscienceores.tints.military}},
    icon_size = 32,
    flags = {"placeable-neutral"},
    order="h",
    map_color = leighzermods.leighzerscienceores.tints.military,--color used for ore patch when viewed from mini map
    minable =
    {     
      mining_particle = "military-science-ore-particle",
      mining_time = 1,
      result = "military-science-ore"
    },
    collision_box = {{ -0.1, -0.1}, {0.1, 0.1}},
    selection_box = {{ -0.5, -0.5}, {0.5, 0.5}},
    autoplace =
    {
      order = "x",
      control = "military-science-ore",
      sharpness = 15/16,
      richness_multiplier = leighzermods.leighzerscienceores.richness_multiplier,
      richness_base = leighzermods.leighzerscienceores.richness_base,
      richness_multiplier_distance_bonus = 20,
      coverage = leighzermods.leighzerscienceores.coverage,
      peaks =
     {
       {
         noise_layer = "military-science-ore",
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
         filename = "__leighzerscienceores__/graphics/entity/ore/ore.png",
         tint = leighzermods.leighzerscienceores.tints.military,--the graphic is actually gray scaled, so we use a tint to make it the color we want
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

if leighzermods.leighzerscienceores.chemicalEnabled then
  data:extend({ 
   {
    type = "resource",
    name = "chemical-science-ore",
    icons = {{icon = "__leighzerscienceores__/graphics/icons/ore.png", tint= leighzermods.leighzerscienceores.tints.chemical}},
    icon_size = 32,
    flags = {"placeable-neutral"},
    order="h",
    map_color = leighzermods.leighzerscienceores.tints.chemical,--color used for ore patch when viewed from mini map
    minable =
    {     
      mining_particle = "chemical-science-ore-particle",
      mining_time = 1,
      result = "chemical-science-ore"
    },
    collision_box = {{ -0.1, -0.1}, {0.1, 0.1}},
    selection_box = {{ -0.5, -0.5}, {0.5, 0.5}},
    autoplace =
    {
      order = "x",
      control = "chemical-science-ore",
      sharpness = 15/16,
      richness_multiplier = leighzermods.leighzerscienceores.richness_multiplier,
      richness_base = leighzermods.leighzerscienceores.richness_base,
      richness_multiplier_distance_bonus = 20,
      coverage = leighzermods.leighzerscienceores.coverage,
      peaks =
     {
       {
         noise_layer = "chemical-science-ore",
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
         filename = "__leighzerscienceores__/graphics/entity/ore/ore.png",
         tint = leighzermods.leighzerscienceores.tints.chemical,--the graphic is actually gray scaled, so we use a tint to make it the color we want
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

if leighzermods.leighzerscienceores.productionEnabled then
  data:extend({ 
   {
    type = "resource",
    name = "production-science-ore",
    icons = {{icon = "__leighzerscienceores__/graphics/icons/ore.png", tint= leighzermods.leighzerscienceores.tints.production}},
    icon_size = 32,
    flags = {"placeable-neutral"},
    order="h",
    map_color = leighzermods.leighzerscienceores.tints.production,--color used for ore patch when viewed from mini map
    minable =
    {     
      mining_particle = "production-science-ore-particle",
      mining_time = 1,
      result = "production-science-ore"
    },
    collision_box = {{ -0.1, -0.1}, {0.1, 0.1}},
    selection_box = {{ -0.5, -0.5}, {0.5, 0.5}},
    autoplace =
    {
      order = "x",
      control = "production-science-ore",
      sharpness = 15/16,
      richness_multiplier = leighzermods.leighzerscienceores.richness_multiplier,
      richness_base = leighzermods.leighzerscienceores.richness_base,
      richness_multiplier_distance_bonus = 20,
      coverage = leighzermods.leighzerscienceores.coverage,
      peaks =
     {
       {
         noise_layer = "production-science-ore",
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
         filename = "__leighzerscienceores__/graphics/entity/ore/ore.png",
         tint = leighzermods.leighzerscienceores.tints.production,--the graphic is actually gray scaled, so we use a tint to make it the color we want
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

if leighzermods.leighzerscienceores.utilityEnabled then
  data:extend({ 
   {
    type = "resource",
    name = "utility-science-ore",
    icons = {{icon = "__leighzerscienceores__/graphics/icons/ore.png", tint= leighzermods.leighzerscienceores.tints.utility}},
    icon_size = 32,
    flags = {"placeable-neutral"},
    order="h",
    map_color = leighzermods.leighzerscienceores.tints.utility,--color used for ore patch when viewed from mini map
    minable =
    {     
      mining_particle = "utility-science-ore-particle",
      mining_time = 1,
      result = "utility-science-ore"
    },
    collision_box = {{ -0.1, -0.1}, {0.1, 0.1}},
    selection_box = {{ -0.5, -0.5}, {0.5, 0.5}},
    autoplace =
    {
      order = "x",
      control = "utility-science-ore",
      sharpness = 15/16,
      richness_multiplier = leighzermods.leighzerscienceores.richness_multiplier,
      richness_base = leighzermods.leighzerscienceores.richness_base,
      richness_multiplier_distance_bonus = 20,
      coverage = leighzermods.leighzerscienceores.coverage,
      peaks =
     {
       {
         noise_layer = "utility-science-ore",
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
         filename = "__leighzerscienceores__/graphics/entity/ore/ore.png",
         tint = leighzermods.leighzerscienceores.tints.utility,--the graphic is actually gray scaled, so we use a tint to make it the color we want
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

if leighzermods.leighzerscienceores.spaceEnabled then
  data:extend({ 
   {
    type = "resource",
    name = "space-science-ore",
    icons = {{icon = "__leighzerscienceores__/graphics/icons/ore.png", tint= leighzermods.leighzerscienceores.tints.space}},
    icon_size = 32,
    flags = {"placeable-neutral"},
    order="h",
    map_color = leighzermods.leighzerscienceores.tints.space,--color used for ore patch when viewed from mini map
    minable =
    {     
      mining_particle = "space-science-ore-particle",
      mining_time = 1,
      result = "space-science-ore"
    },
    collision_box = {{ -0.1, -0.1}, {0.1, 0.1}},
    selection_box = {{ -0.5, -0.5}, {0.5, 0.5}},
    autoplace =
    {
      order = "x",
      control = "space-science-ore",
      sharpness = 15/16,
      richness_multiplier = leighzermods.leighzerscienceores.richness_multiplier,
      richness_base = leighzermods.leighzerscienceores.richness_base,
      richness_multiplier_distance_bonus = 20,
      coverage = leighzermods.leighzerscienceores.coverage,
      peaks =
     {
       {
         noise_layer = "space-science-ore",
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
         filename = "__leighzerscienceores__/graphics/entity/ore/ore.png",
         tint = leighzermods.leighzerscienceores.tints.space,--the graphic is actually gray scaled, so we use a tint to make it the color we want
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
