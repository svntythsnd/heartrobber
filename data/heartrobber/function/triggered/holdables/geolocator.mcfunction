scoreboard players set @s heartrobber_compare2 16

execute store result storage heartrobber:temp geolocator.x int 1 run data get entity @s Pos[0]
execute store result score @s heartrobber_compare run data get entity @s Pos[0]
scoreboard players operation @s heartrobber_compare %= @s heartrobber_compare2
execute store result storage heartrobber:temp geolocator.cx int 1 run scoreboard players get @s heartrobber_compare
execute if dimension overworld store result storage heartrobber:temp geolocator.qx int 0.125 run data get entity @s Pos[0]
execute if dimension the_nether store result storage heartrobber:temp geolocator.qx int 8 run data get entity @s Pos[0]

execute store result storage heartrobber:temp geolocator.y int 1 run data get entity @s Pos[1]
execute store result score @s heartrobber_compare run data get entity @s Pos[1]
scoreboard players operation @s heartrobber_compare %= @s heartrobber_compare2
execute store result storage heartrobber:temp geolocator.cy int 1 run scoreboard players get @s heartrobber_compare

execute store result storage heartrobber:temp geolocator.z int 1 run data get entity @s Pos[2]
execute store result score @s heartrobber_compare run data get entity @s Pos[2]
scoreboard players operation @s heartrobber_compare %= @s heartrobber_compare2
execute store result storage heartrobber:temp geolocator.cz int 1 run scoreboard players get @s heartrobber_compare
execute if dimension overworld store result storage heartrobber:temp geolocator.qz int 0.125 run data get entity @s Pos[2]
execute if dimension the_nether store result storage heartrobber:temp geolocator.qz int 8 run data get entity @s Pos[2]

execute store result storage heartrobber:temp geolocator.Y int 1 run data get entity @s Rotation[0]
execute if data storage heartrobber:temp geolocator{Y:-180} run data merge storage heartrobber:temp {geolocator:{Y:180}}
execute store result storage heartrobber:temp geolocator.p int 1 run data get entity @s Rotation[1]

data modify storage heartrobber:temp geolocator.c set value "green"
data modify storage heartrobber:temp geolocator.w set value "green"
execute if data entity @s {respawn:{dimension:"minecraft:the_nether"}} run data modify storage heartrobber:temp geolocator.c set value "red"
execute if dimension the_nether run data modify storage heartrobber:temp geolocator.w set value "red"
execute if data entity @s {respawn:{dimension:"minecraft:the_end"}} run data modify storage heartrobber:temp geolocator.c set value "aqua"
execute if dimension the_end run data modify storage heartrobber:temp geolocator.w set value "aqua"

data modify storage heartrobber:temp geolocator.qc set value "red"
data modify storage heartrobber:temp geolocator.rc set value "red"
execute if dimension the_nether run data modify storage heartrobber:temp geolocator.qc set value "green"
execute if data entity @s {respawn:{dimension:"minecraft:the_nether"}} run data modify storage heartrobber:temp geolocator.rc set value "green"

execute if data entity @s respawn.pos[0] run data modify storage heartrobber:temp geolocator.sx set from entity @s respawn.pos[0]
execute if data entity @s {respawn:{dimension:"minecraft:overworld"}} if data entity @s respawn.pos[0] store result storage heartrobber:temp geolocator.rx int 0.125 run data get entity @s respawn.pos[0]
execute if data entity @s {respawn:{dimension:"minecraft:the_nether"}} if data entity @s respawn.pos[0] store result storage heartrobber:temp geolocator.rx int 8 run data get entity @s respawn.pos[0]

execute unless data entity @s respawn.pos[0] run data modify storage heartrobber:temp geolocator.sx set value "-"
execute if data entity @s {respawn:{dimension:"minecraft:the_end"}} run data modify storage heartrobber:temp geolocator.rx set value "-"
execute unless data entity @s respawn.pos[0] run data modify storage heartrobber:temp geolocator.rx set value "-"

execute if data entity @s respawn.pos[1] run data modify storage heartrobber:temp geolocator.sy set from entity @s respawn.pos[1]

execute unless data entity @s respawn.pos[1] run data modify storage heartrobber:temp geolocator.sy set value "-"

execute if data entity @s respawn.pos[2] run data modify storage heartrobber:temp geolocator.sz set from entity @s respawn.pos[2]
execute if data entity @s {respawn:{dimension:"minecraft:overworld"}} if data entity @s respawn.pos[2] store result storage heartrobber:temp geolocator.rz int 0.125 run data get entity @s respawn.pos[2]
execute if data entity @s {respawn:{dimension:"minecraft:the_nether"}} if data entity @s respawn.pos[2] store result storage heartrobber:temp geolocator.rz int 8 run data get entity @s respawn.pos[2]

execute unless data entity @s respawn.pos[2] run data modify storage heartrobber:temp geolocator.sz set value "-"
execute if data entity @s {respawn:{dimension:"minecraft:the_end"}} run data modify storage heartrobber:temp geolocator.rz set value "-"
execute unless data entity @s respawn.pos[2] run data modify storage heartrobber:temp geolocator.rz set value "-"

function heartrobber:macro/geolocator with storage heartrobber:temp geolocator

return 1