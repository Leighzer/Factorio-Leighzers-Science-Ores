function AddParticle(particleName)
  data:extend(
  {
    {--prototype for particles that fly out when you hand mine the ore in the ground
      type = "particle",
      name = particleName .. "-science-ore-particle",
      flags = {"not-on-map"},
      life_time = 180,
      pictures =
      {
        {
          filename = "__leighzerscienceores__/graphics/entity/ore-particle/"..particleName.."-science-ore-particle-1.png",          
          priority = "extra-high",
          width = 16,
          height = 16,
          frame_count = 1
        },
        {
          filename = "__leighzerscienceores__/graphics/entity/ore-particle/"..particleName.."-science-ore-particle-2.png",          
          priority = "extra-high",
          width = 16,
          height = 16,
          frame_count = 1
        },
        {
          filename = "__leighzerscienceores__/graphics/entity/ore-particle/"..particleName.."-science-ore-particle-3.png",          
          priority = "extra-high",
          width = 16,
          height = 16,
          frame_count = 1
        },
        {
          filename = "__leighzerscienceores__/graphics/entity/ore-particle/"..particleName.."-science-ore-particle-4.png",          
          priority = "extra-high",
          width = 16,
          height = 16,
          frame_count = 1
        }
      },
      shadows =
      {
        {
          filename = "__leighzerscienceores__/graphics/entity/ore-particle/ore-particle-shadow-1.png",
          priority = "extra-high",
          width = 16,
          height = 16,
          frame_count = 1
        },
        {
          filename = "__leighzerscienceores__/graphics/entity/ore-particle/ore-particle-shadow-2.png",
          priority = "extra-high",
          width = 16,
          height = 16,
          frame_count = 1
        },
        {
          filename = "__leighzerscienceores__/graphics/entity/ore-particle/ore-particle-shadow-3.png",
          priority = "extra-high",
          width = 16,
          height = 16,
          frame_count = 1
        },
        {
          filename = "__leighzerscienceores__/graphics/entity/ore-particle/ore-particle-shadow-4.png",
          priority = "extra-high",
          width = 16,
          height = 16,
          frame_count = 1
        }
      }
    }
  })
end

--quick and dirty method call to give all ores different ore particles, probably will make custom graphics down the road
if leighzermods.leighzerscienceores.automationEnabled then
  AddParticle('automation')
end
if leighzermods.leighzerscienceores.logisticEnabled then
  AddParticle('logistic')
end
if leighzermods.leighzerscienceores.militaryEnabled then
  AddParticle('military')
end
if leighzermods.leighzerscienceores.chemicalEnabled then
  AddParticle('chemical')
end
if leighzermods.leighzerscienceores.productionEnabled then
  AddParticle('production')
end
if leighzermods.leighzerscienceores.utilityEnabled then
  AddParticle('utility')
end
if leighzermods.leighzerscienceores.spaceEnabled then
  AddParticle('space')
end

if mods["bobtech"] and leighzermods.leighzerscienceores.advancedLogisticEnabled then
  AddParticle('advanced-logistic')
end