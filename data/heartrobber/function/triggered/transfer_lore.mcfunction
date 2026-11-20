data modify storage heartrobber:temp card.UUID set from entity @s UUID
data modify storage heartrobber:temp card.extra set value [{"text":"","color":"gray"}]
data modify storage heartrobber:temp card.extra[0].text set from entity @s SelectedItem.components."minecraft:custom_name"
loot spawn ~ ~ ~ loot heartrobber:player_head
tag @n[type=item,nbt={Item:{id:"minecraft:player_head"},Age:0s},distance=..0.01] add heartrobber_temp_playerhead
execute as @n[tag=heartrobber_temp_playerhead,distance=..0.01] run data modify storage heartrobber:temp card.name set from entity @s Item.components."minecraft:profile".name
kill @n[tag=heartrobber_temp_playerhead,distance=..0.01]
function heartrobber:macro/set_lore with storage heartrobber:temp card