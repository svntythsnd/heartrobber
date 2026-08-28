execute store result score @s heartrobber_compare run function heartrobber:triggered/dispenser/get_major_direction
execute if score @s heartrobber_compare matches 0 run return 0
execute if score @s heartrobber_compare matches 1 run return run execute if block ~-1 ~ ~ dispenser[facing=east] if block ~ ~ ~ #heartrobber:shelves[facing=west]
execute if score @s heartrobber_compare matches 2 run return run execute if block ~ ~ ~-1 dispenser[facing=south] if block ~ ~ ~ #heartrobber:shelves[facing=north]
execute if score @s heartrobber_compare matches 3 run return run execute if block ~1 ~ ~ dispenser[facing=west] if block ~ ~ ~ #heartrobber:shelves[facing=east]
execute if score @s heartrobber_compare matches 4 run return run execute if block ~ ~ ~1 dispenser[facing=north] if block ~ ~ ~ #heartrobber:shelves[facing=south]
return 0