$execute store result storage heartrobber:geolocator "$(name)".x int 1 run data get entity @s Pos[0]
$execute store result storage heartrobber:geolocator "$(name)".y int 1 run data get entity @s Pos[1]
$execute store result storage heartrobber:geolocator "$(name)".z int 1 run data get entity @s Pos[2]
$execute store result storage heartrobber:geolocator "$(name)".y int 1 run data get entity @s Rotation[0]
$execute store result storage heartrobber:geolocator "$(name)".p int 1 run data get entity @s Rotation[1]
$data modify storage heartrobber:geolocator "$(name)".c set value "green"
$data modify storage heartrobber:geolocator "$(name)".w set value "green"
$execute if data entity @s {"SpawnDimension":"minecraft:the_nether"} run data modify storage heartrobber:geolocator "$(name)".c set value "red"
$execute if dimension the_nether run data modify storage heartrobber:geolocator "$(name)".w set value "red"
$execute if data entity @s {"SpawnDimension":"minecraft:the_end"} run data modify storage heartrobber:geolocator "$(name)".c set value "aqua"
$execute if dimension the_end run data modify storage heartrobber:geolocator "$(name)".w set value "aqua"
$execute if data entity @s SpawnX run data modify storage heartrobber:geolocator "$(name)".sx set from entity @s SpawnX
$execute unless data entity @s SpawnX run data modify storage heartrobber:geolocator "$(name)".sx set value "-"
$execute if data entity @s SpawnY run data modify storage heartrobber:geolocator "$(name)".sy set from entity @s SpawnY
$execute unless data entity @s SpawnY run data modify storage heartrobber:geolocator "$(name)".sy set value "-"
$execute if data entity @s SpawnZ run data modify storage heartrobber:geolocator "$(name)".sz set from entity @s SpawnZ
$execute unless data entity @s SpawnZ run data modify storage heartrobber:geolocator "$(name)".sz set value "-"
$function heartrobber:macro/geolocator with storage heartrobber:geolocator "$(name)"