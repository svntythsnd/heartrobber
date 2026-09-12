execute as @n[type=#heartrobber:item_frame,distance=..1,nbt={Fixed:1b}] at @s run function heartrobber:triggered/lock/unlock/pov
function heartrobber:triggered/lock/holding_lock
execute if score @s heartrobber_compare matches 1 run return run swing
execute if score @s heartrobber_compare matches 2 run swing @s offhand