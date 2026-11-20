loot spawn ~ ~ ~ loot heartrobber:player_head
tag @n[type=item,nbt={Item:{id:"minecraft:player_head"},Age:0s},distance=..0.01] add heartrobber_temp_playerhead
data modify storage heartrobber:temp card.name set from entity @n[tag=heartrobber_temp_playerhead,distance=..0.01] Item.components."minecraft:profile".name
data modify storage heartrobber:temp card.UUID set from entity @s UUID
function heartrobber:macro/save_uuid_name with storage heartrobber:temp card
kill @n[tag=heartrobber_temp_playerhead,distance=..0.01]