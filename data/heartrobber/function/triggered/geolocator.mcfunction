scoreboard players set @s heartrobber_compare2 16

execute store result storage heartrobber:geolocator x int 1 run data get entity @s Pos[0]
execute store result score @s heartrobber_compare run data get entity @s Pos[0]
scoreboard players operation @s heartrobber_compare %= @s heartrobber_compare2
execute store result storage heartrobber:geolocator cx int 1 run scoreboard players get @s heartrobber_compare
execute if dimension overworld store result storage heartrobber:geolocator qx int 0.125 run data get entity @s Pos[0]
execute if dimension the_nether store result storage heartrobber:geolocator qx int 8 run data get entity @s Pos[0]

execute store result storage heartrobber:geolocator y int 1 run data get entity @s Pos[1]
execute store result score @s heartrobber_compare run data get entity @s Pos[1]
scoreboard players operation @s heartrobber_compare %= @s heartrobber_compare2
execute store result storage heartrobber:geolocator cy int 1 run scoreboard players get @s heartrobber_compare

execute store result storage heartrobber:geolocator z int 1 run data get entity @s Pos[2]
execute store result score @s heartrobber_compare run data get entity @s Pos[2]
scoreboard players operation @s heartrobber_compare %= @s heartrobber_compare2
execute store result storage heartrobber:geolocator cz int 1 run scoreboard players get @s heartrobber_compare
execute if dimension overworld store result storage heartrobber:geolocator qz int 0.125 run data get entity @s Pos[2]
execute if dimension the_nether store result storage heartrobber:geolocator qz int 8 run data get entity @s Pos[2]

execute store result storage heartrobber:geolocator Y int 1 run data get entity @s Rotation[0]
execute store result storage heartrobber:geolocator p int 1 run data get entity @s Rotation[1]

data modify storage heartrobber:geolocator c set value "green"
data modify storage heartrobber:geolocator w set value "green"
execute if data entity @s {"SpawnDimension":"minecraft:the_nether"} run data modify storage heartrobber:geolocator c set value "red"
execute if dimension the_nether run data modify storage heartrobber:geolocator w set value "red"
execute if data entity @s {"SpawnDimension":"minecraft:the_end"} run data modify storage heartrobber:geolocator c set value "aqua"
execute if dimension the_end run data modify storage heartrobber:geolocator w set value "aqua"

execute if data entity @s SpawnX run data modify storage heartrobber:geolocator sx set from entity @s SpawnX
execute if data entity @s {"SpawnDimension":"minecraft:overworld"} if data entity @s SpawnX store result storage heartrobber:geolocator rx int 0.125 run data get entity @s SpawnX
execute if data entity @s {"SpawnDimension":"minecraft:the_nether"} if data entity @s SpawnX store result storage heartrobber:geolocator rx int 8 run data get entity @s SpawnX

execute unless data entity @s SpawnX run data modify storage heartrobber:geolocator sx set value "-"
execute unless data entity @s {"SpawnDimension":"minecraft:the_end"} unless data entity @s SpawnX run data modify storage heartrobber:geolocator rx set value "-"

execute if data entity @s SpawnY run data modify storage heartrobber:geolocator sy set from entity @s SpawnY

execute unless data entity @s SpawnY run data modify storage heartrobber:geolocator sy set value "-"

execute if data entity @s SpawnZ run data modify storage heartrobber:geolocator sz set from entity @s SpawnZ
execute if data entity @s {"SpawnDimension":"minecraft:overworld"} if data entity @s SpawnZ store result storage heartrobber:geolocator rz int 0.125 run data get entity @s SpawnZ
execute if data entity @s {"SpawnDimension":"minecraft:the_nether"} if data entity @s SpawnZ store result storage heartrobber:geolocator rz int 8 run data get entity @s SpawnZ

execute unless data entity @s SpawnZ run data modify storage heartrobber:geolocator sz set value "-"
execute unless data entity @s {"SpawnDimension":"minecraft:the_end"} unless data entity @s SpawnZ run data modify storage heartrobber:geolocator rz set value "-"

function heartrobber:macro/geolocator with storage heartrobber:geolocator