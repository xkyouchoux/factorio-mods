if not mods["aai-loaders"] then return end

if settings.startup["sei-add-stacking-to-aai-loaders"].value then
    for k,v in pairs(data.raw["loader-1x1"]) do
        if k:find("aai-") == 1 then
            v.max_belt_stack_size = data.raw["inserter"]["stack-inserter"].max_belt_stack_size
            v.adjustable_belt_stack_size = true
            v.wait_for_full_stack = settings.startup["sei-loaders-wait-for-full-stack"].value
        end
    end
end
