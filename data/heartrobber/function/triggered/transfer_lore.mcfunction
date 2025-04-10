advancement grant @s only heartrobber:story/inscribe
data merge storage heartrobber:cardtemp {lore:""}
data modify storage heartrobber:cardtemp lore set from entity @s SelectedItem.components."minecraft:custom_name"
loot spawn ~ ~ ~ loot heartrobber:player_head
tag @n[type=item,nbt={Item:{id:"minecraft:player_head"},Age:0s},distance=..0.01] add heartrobber_temp_playerhead
execute as @e[tag=heartrobber_temp_playerhead,distance=..0.01] run data modify storage heartrobber:cardtemp name set from entity @s Item.components."minecraft:profile".name
kill @e[tag=heartrobber_temp_playerhead,distance=..0.01]
function heartrobber:macro/set_lore with storage heartrobber:cardtemp