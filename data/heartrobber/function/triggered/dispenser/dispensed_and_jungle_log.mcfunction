execute store result score @s heartrobber_compare run function heartrobber:triggered/dispenser/get_major_direction
execute if score @s heartrobber_compare matches 0 run return 0
execute if score @s heartrobber_compare matches 1 run return run execute if block ~-1 ~ ~ dispenser[facing=east] positioned ~1 ~ ~ if predicate heartrobber:cocoa_placeable/x run return 1
execute if score @s heartrobber_compare matches 2 run return run execute if block ~ ~ ~-1 dispenser[facing=south] positioned ~ ~ ~1 if predicate heartrobber:cocoa_placeable/z run return 2
execute if score @s heartrobber_compare matches 3 run return run execute if block ~1 ~ ~ dispenser[facing=west] positioned ~-1 ~ ~ if predicate heartrobber:cocoa_placeable/x run return 3
execute if score @s heartrobber_compare matches 4 run return run execute if block ~ ~ ~1 dispenser[facing=north] positioned ~ ~ ~-1 if predicate heartrobber:cocoa_placeable/z run return 4
return 0