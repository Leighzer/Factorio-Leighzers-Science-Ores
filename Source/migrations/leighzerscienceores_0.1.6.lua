for _,force in pairs(game.forces) do
    --if game.entity_prototypes["automation-science-ore"] then
    --    force.recipes["automation-science-ore-to-science"].enabled = force.technologies["automation-science-pack"].researched
    --end
    if game.entity_prototypes["logistic-science-ore"] then
        force.recipes["logistic-science-ore-to-science"].enabled = force.technologies["logistic-science-pack"].researched
    end
    if game.entity_prototypes["military-science-ore"] then
        force.recipes["military-science-ore-to-science"].enabled = force.technologies["military-science-pack"].researched
    end
    if game.entity_prototypes["chemical-science-ore"] then
        force.recipes["chemical-science-ore-to-science"].enabled = force.technologies["chemical-science-pack"].researched
    end
    if game.entity_prototypes["production-science-ore"] then
        force.recipes["production-science-ore-to-science"].enabled = force.technologies["production-science-pack"].researched
    end
    if game.entity_prototypes["utility-science-ore"] then
        force.recipes["utility-science-ore-to-science"].enabled = force.technologies["utility-science-pack"].researched
    end
    if game.entity_prototypes["space-science-ore"] then
        force.recipes["space-science-ore-to-science"].enabled = force.technologies["space-science-pack"].researched    
    end
    if game.entity_prototypes["advanced-logistic-science-ore"] then
        force.recipes["advanced-logistic-science-ore-to-science"].enabled = force.technologies["advanced-logistic-science-pack"].researched    
    end
end