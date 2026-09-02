execute store result score @s heartrobber_compare4 on vehicle run data get entity @s Count
scoreboard players operation @s heartrobber_compare *= @s heartrobber_compare3
scoreboard players operation @s heartrobber_compare2 *= @s heartrobber_compare4
scoreboard players operation @s heartrobber_compare += @s heartrobber_compare2

execute store result entity @s Value short 1 run scoreboard players get @s heartrobber_compare
data modify entity @s Count set value 1s

execute on vehicle run kill