$data modify entity @s CustomName set value "\u0024$(endpoint_id)"
$execute store result storage heartrobber:mail endpoints."$(endpoint_id)".x int 1 run data get entity @s Pos[0]
execute store result score @s heartrobber_compare run data get entity @s Pos[1]
scoreboard players remove @s heartrobber_compare 1
$execute store result storage heartrobber:mail endpoints."$(endpoint_id)".y int 1 run scoreboard players get @s heartrobber_compare
$execute store result storage heartrobber:mail endpoints."$(endpoint_id)".z int 1 run data get entity @s Pos[2]
$data modify storage heartrobber:mail endpoints."$(endpoint_id)".open set value true
playsound block.iron.place block @a ~ ~ ~ 1 0.8