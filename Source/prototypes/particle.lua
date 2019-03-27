function AddParticle(particleName, particleTint)
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
          filename = "__leighzerscienceores__/graphics/entity/ore-particle/ore-particle-1.png",
          tint=particleTint,
          priority = "extra-high",
          width = 16,
          height = 16,
          frame_count = 1
        },
        {
          filename = "__leighzerscienceores__/graphics/entity/ore-particle/ore-particle-2.png",
          tint=particleTint,
          priority = "extra-high",
          width = 16,
          height = 16,
          frame_count = 1
        },
        {
          filename = "__leighzerscienceores__/graphics/entity/ore-particle/ore-particle-3.png",
          tint=particleTint,
          priority = "extra-high",
          width = 16,
          height = 16,
          frame_count = 1
        },
        {
          filename = "__leighzerscienceores__/graphics/entity/ore-particle/ore-particle-4.png",
          tint=particleTint,
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
AddParticle('automation',leighzermods.leighzerscienceores.tints.automation)
AddParticle('logistic',leighzermods.leighzerscienceores.tints.logistic)
AddParticle('military',leighzermods.leighzerscienceores.tints.military)
AddParticle('chemical',leighzermods.leighzerscienceores.tints.chemical)
AddParticle('production',leighzermods.leighzerscienceores.tints.production)
AddParticle('utility',leighzermods.leighzerscienceores.tints.utility)
AddParticle('space',leighzermods.leighzerscienceores.tints.space)