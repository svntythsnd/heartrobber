loot spawn ~ ~ ~ loot heartrobber:player_head
tag @n[type=item,nbt={Item:{id:"minecraft:player_head"},Age:0s},distance=..0.01] add heartrobber_temp_playerhead
execute as @e[tag=heartrobber_temp_playerhead,distance=..0.01] run data modify storage heartrobber:cardtemp name set from entity @s Item.components."minecraft:profile".name
data modify storage heartrobber:cardtemp UUID set from entity @s UUID
function heartrobber:macro/save_uuid_name with storage heartrobber:cardtemp
kill @e[tag=heartrobber_temp_playerhead,distance=..0.01]