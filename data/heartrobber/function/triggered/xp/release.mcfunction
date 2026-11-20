execute store result score @s heartrobber_compare run data get entity @s SelectedItem.components."minecraft:damage"
execute store result score @s heartrobber_compare3 run data get entity @s SelectedItem.components."minecraft:max_damage"
execute unless score @s heartrobber_compare < @s heartrobber_compare3 run return 0
execute anchored eyes run summon minecraft:experience_orb ^ ^ ^2 {Value:1}
scoreboard players add @s heartrobber_compare 1
scoreboard players operation @s heartrobber_compare2 = @s heartrobber_compare3
scoreboard players operation @s heartrobber_compare2 -= @s heartrobber_compare
execute store result storage heartrobber:temp xp.damage int 1 run scoreboard players get @s heartrobber_compare
execute store result storage heartrobber:temp xp.val int 1 run scoreboard players get @s heartrobber_compare2
execute store result storage heartrobber:temp xp.max int 1 run scoreboard players get @s heartrobber_compare3
data modify storage heartrobber:temp xp.hand set value "mainhand"
function heartrobber:macro/set_xp_lore with storage heartrobber:temp xp