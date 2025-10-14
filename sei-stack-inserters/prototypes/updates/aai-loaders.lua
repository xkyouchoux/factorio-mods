if not mods["aai-loaders"] then return end

for k,v in pairs(data.raw["loader-1x1"]) do
    if k:find("aai-") == 1 then
        v.max_belt_stack_size = data.raw["inserter"]["stack-inserter"].max_belt_stack_size
        v.adjustable_belt_stack_size = true
        v.wait_for_full_stack = true
    end
end
