data modify storage heartrobber:temp compat_queue set value []
data modify storage heartrobber:temp compat_queue append from entity @s Inventory[{id:"minecraft:trial_key"}]
data modify storage heartrobber:temp compat_queue append from entity @s Inventory[{id:"minecraft:filled_map"}]
function heartrobber:triggered/compat/iteration
data modify storage heartrobber:temp compat_queue append from entity @s Inventory[{id:"minecraft:clock"}]
data modify storage heartrobber:temp compat_queue append from entity @s Inventory[{id:"minecraft:allay_spawn_egg"}]
function heartrobber:triggered/compat/fix_byte/iteration
data modify storage heartrobber:temp compat_queue append from entity @s Inventory[{components:{"minecraft:custom_data":{"heartrobber:type":6b}}}]
function heartrobber:triggered/compat/card_update/iteration