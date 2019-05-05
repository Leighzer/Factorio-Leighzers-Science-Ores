
function AddItem(resourceName, order)
  data:extend({    
  {--prototype for object that gets stored in inventory when ore is mined
    type = "item",
    name = resourceName.."-science-ore",
    icon = "__leighzerscienceores__/graphics/icons/"..resourceName.."-science-ore.png",
    icon_size = 32,            
    subgroup = "raw-resource",
    order = order,
    stack_size = 50,
  }
})
end

function AddLogisticScienceOreItem()
  data:extend({    
    {--prototype for object that gets stored in inventory when ore is mined
      type = "item",
      name = "logistic-science-ore",
      icon = "__leighzerscienceores__/graphics/icons/logistic-science-ore.png",
      icon_size = 32,            
      subgroup = "raw-resource",
      order = "a-b-b",
      stack_size = 50,      
      localised_name = {"item-name.logistic-science-ore","Logistic"}
    }
  })
end


--quick and dirty method call to give all ores different ore particles, probably will make custom graphics down the road
if leighzermods.leighzerscienceores.automationEnabled then
  AddItem('automation','a-b-a')
end
if leighzermods.leighzerscienceores.logisticEnabled then
  AddLogisticScienceOreItem()
end
if leighzermods.leighzerscienceores.militaryEnabled then
  AddItem('military','a-b-c')
end
if leighzermods.leighzerscienceores.chemicalEnabled then
  AddItem('chemical','a-b-d')
end
if leighzermods.leighzerscienceores.productionEnabled then
  AddItem('production','a-b-e')
end
if leighzermods.leighzerscienceores.utilityEnabled then
  AddItem('utility','a-b-f')
end
if leighzermods.leighzerscienceores.spaceEnabled then
  AddItem('space','a-b-g')
end

if mods["bobtech"] and leighzermods.leighzerscienceores.advancedLogisticEnabled then
  AddItem('advanced-logistic','a-b-d-a')
end
