execute store result score @s heartrobber_compare run data get entity @s SelectedItem.components."minecraft:damage"
execute store result score @s heartrobber_compare3 run data get entity @s SelectedItem.components."minecraft:max_damage"
execute if score @s heartrobber_compare < @s heartrobber_compare3 run tag @s add heartrobber_xpReleaser
execute as @s[tag=heartrobber_xpReleaser] anchored eyes run summon minecraft:experience_orb ^ ^ ^2 {Value:1}
scoreboard players add @s[tag=heartrobber_xpReleaser] heartrobber_compare 1
scoreboard players operation @s[tag=heartrobber_xpReleaser] heartrobber_compare2 = @s heartrobber_compare3
scoreboard players operation @s[tag=heartrobber_xpReleaser] heartrobber_compare2 -= @s heartrobber_compare
execute as @s[tag=heartrobber_xpReleaser] store result storage heartrobber:xptemp damage int 1 run scoreboard players get @s heartrobber_compare
execute as @s[tag=heartrobber_xpReleaser] store result storage heartrobber:xptemp xp int 1 run scoreboard players get @s heartrobber_compare2
execute as @s[tag=heartrobber_xpReleaser] store result storage heartrobber:xptemp max int 1 run scoreboard players get @s heartrobber_compare3
execute as @s[tag=heartrobber_xpReleaser] run data modify storage heartrobber:xptemp hand set value "mainhand"
execute as @s[tag=heartrobber_xpReleaser] run function heartrobber:macro/set_xp_lore with storage heartrobber:xptemp
tag @s remove heartrobber_xpReleaser