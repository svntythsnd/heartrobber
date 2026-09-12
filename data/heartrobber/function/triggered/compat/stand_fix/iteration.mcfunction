execute unless data storage heartrobber:temp compat_queue[0] run return 0
execute unless data storage heartrobber:temp compat_queue[0].components."minecraft:max_stack_size" run function heartrobber:triggered/compat/stand_fix/process
data remove storage heartrobber:temp compat_queue[0]
function heartrobber:triggered/compat/stand_fix/iteration