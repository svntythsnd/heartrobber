execute unless data storage heartrobber:temp compat_queue[0] run return 0
execute unless data storage heartrobber:temp compat_queue[0].components."minecraft:consumable".sound run function heartrobber:triggered/compat/food_sound_fix/process
data remove storage heartrobber:temp compat_queue[0]
function heartrobber:triggered/compat/food_sound_fix/iteration