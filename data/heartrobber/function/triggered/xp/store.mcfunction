execute store result score @s heartrobber_compare run data get entity @s Inventory[{Slot:-106b}].components."minecraft:damage"
execute store result score @s heartrobber_compare3 run data get entity @s Inventory[{Slot:-106b}].components."minecraft:max_damage"
execute if score @s heartrobber_compare matches 1.. run tag @s add heartrobber_xpStocker
execute as @s[tag=heartrobber_xpStocker] run xp add @s -1
scoreboard players remove @s[tag=heartrobber_xpStocker] heartrobber_compare 1
scoreboard players operation @s[tag=heartrobber_xpStocker] heartrobber_compare2 = @s heartrobber_compare3
scoreboard players operation @s[tag=heartrobber_xpStocker] heartrobber_compare2 -= @s heartrobber_compare
execute as @s[tag=heartrobber_xpStocker] store result storage heartrobber:xptemp damage int 1 run scoreboard players get @s heartrobber_compare
execute as @s[tag=heartrobber_xpStocker] store result storage heartrobber:xptemp xp int 1 run scoreboard players get @s heartrobber_compare2
execute as @s[tag=heartrobber_xpStocker] store result storage heartrobber:xptemp max int 1 run scoreboard players get @s heartrobber_compare3
execute as @s[tag=heartrobber_xpStocker] run data modify storage heartrobber:xptemp hand set value "offhand"
execute as @s[tag=heartrobber_xpStocker] run function heartrobber:macro/set_xp_lore with storage heartrobber:xptemp
tag @s remove heartrobber_xpStocker