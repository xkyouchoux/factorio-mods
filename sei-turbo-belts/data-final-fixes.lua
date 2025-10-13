local fix = mods["um-standalone-space-age-lib"]

data.raw.recipe["turbo-transport-belt"].category = fix and "crafting-with-fluid-or-metallurgy" or "crafting-with-fluid"
data.raw.recipe["turbo-underground-belt"].category = fix and "crafting-with-fluid-or-metallurgy" or "crafting-with-fluid"
data.raw.recipe["turbo-splitter"].category = fix and "crafting-with-fluid-or-metallurgy" or "crafting-with-fluid"

if data.raw.recipe["aai-turbo-loader"] then
    data.raw.recipe["aai-turbo-loader"].category = fix and "crafting-with-fluid-or-metallurgy" or "crafting-with-fluid"
end

if data.raw.recipe["turbo-lane-splitter"] then
    data.raw.recipe["turbo-lane-splitter"].category = fix and "crafting-with-fluid-or-metallurgy" or "crafting-with-fluid"
end