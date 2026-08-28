execute store result score @s heartrobber_compare run function heartrobber:triggered/dispenser/get_major_direction
execute if score @s heartrobber_compare matches 0 run return 0
execute if score @s heartrobber_compare matches 1 if block ~-1 ~ ~ dispenser[facing=east] run return 1
execute if score @s heartrobber_compare matches 2 if block ~ ~ ~-1 dispenser[facing=south] run return 2
execute if score @s heartrobber_compare matches 3 if block ~1 ~ ~ dispenser[facing=west] run return 3
execute if score @s heartrobber_compare matches 4 if block ~ ~ ~1 dispenser[facing=north] run return 4
execute if score @s heartrobber_compare matches 5 if block ~ ~-1 ~ dispenser[facing=up] run return 5
execute if score @s heartrobber_compare matches 6 if block ~ ~1 ~ dispenser[facing=down] run return 6
return 0