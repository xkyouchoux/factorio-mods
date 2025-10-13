for _,force in pairs(game.forces) do
    if force.technologies["se-processing-cryonite"].researched then
        force.technologies["cryogenic-plant"].researched = true
    end
end