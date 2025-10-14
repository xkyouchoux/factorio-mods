local data_util = require('__sei-library__.data_util')

for _,inserter in pairs(data.raw.inserter) do
    if inserter.wait_for_full_hand then inserter.enter_drop_mode_if_held_stack_spoiled = true end
end
