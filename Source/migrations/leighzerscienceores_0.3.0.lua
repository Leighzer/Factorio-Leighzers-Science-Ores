-- this migration makes sure that if a particular tech is researched, that all appropriate recipes from that tech are unlocked 
-- this fixes the problem that you researched a tech, added a mod that added recipes to that tech, and all the mod recipes are now forever locked
for _,force in pairs(game.forces) do   
    -- for each technology
    for k,v in pairs(force.technologies) do
        -- if the tech is researched
        if v.researched then
            -- for each effect the technology has
            for i, effect in ipairs(v.effects) do
                -- if it unlocks a recipe and has a recipe
                if (effect.type == "unlock-recipe" and effect.recipe) then
                    -- search through recipes
                    for kk, vv in pairs(force.recipes) do
                        -- if the effect matches the recipe and the recipe is not enabled
                        if (effect.recipe == vv.name and (not vv.enabled)) then                            
                            vv.enabled = true -- enable it
                        end
                    end
                end
            end
        end
    end
end