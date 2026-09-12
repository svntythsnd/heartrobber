execute as @s[scores={heartrobber_compare=9..}] run return 0
execute store result storage heartrobber:temp dispenser.item.Slot byte 1 run scoreboard players get @s heartrobber_compare
execute if function heartrobber:triggered/dispenser/populate/bridge_setitem run return 1
scoreboard players add @s heartrobber_compare 1
return run function heartrobber:triggered/dispenser/populate/iteration