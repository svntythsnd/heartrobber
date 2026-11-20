execute store result score @s heartrobber_compare run data get entity @s equipment.offhand.components."minecraft:damage"
execute store result score @s heartrobber_compare3 run data get entity @s equipment.offhand.components."minecraft:max_damage"
execute unless score @s heartrobber_compare matches 1.. run return 0
xp add @s -1
scoreboard players remove @s heartrobber_compare 1
scoreboard players operation @s heartrobber_compare2 = @s heartrobber_compare3
scoreboard players operation @s heartrobber_compare2 -= @s heartrobber_compare
execute store result storage heartrobber:temp xp.damage int 1 run scoreboard players get @s heartrobber_compare
execute store result storage heartrobber:temp xp.val int 1 run scoreboard players get @s heartrobber_compare2
execute store result storage heartrobber:temp xp.max int 1 run scoreboard players get @s heartrobber_compare3
data modify storage heartrobber:temp xp.hand set value "offhand"
function heartrobber:macro/set_xp_lore with storage heartrobber:temp xp