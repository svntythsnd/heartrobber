loot spawn ~ ~ ~ loot heartrobber:player_head
tag @n[type=item,nbt={Item:{id:"minecraft:player_head"},Age:0s},distance=..0.01] add heartrobber_temp_playerhead
function heartrobber:macro/geolocator_name with entity @n[tag=heartrobber_temp_playerhead,distance=..0.01] Item.components."minecraft:profile"
kill @e[tag=heartrobber_temp_playerhead,distance=..0.01]