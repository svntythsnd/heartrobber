data merge storage heartrobber:cardtemp {lore:""}
$data modify storage heartrobber:cardtemp lore set from entity @s Inventory[{Slot:$(SelectedItemSlot)b}].components."minecraft:custom_name"
loot spawn ~ ~ ~ loot heartrobber:player_head
tag @n[type=item,nbt={Item:{id:"minecraft:player_head"}}] add heartrobber_temp_playerhead
execute as @e[tag=heartrobber_temp_playerhead] run data modify storage heartrobber:cardtemp name set from entity @s Item.components."minecraft:profile".name
kill @e[tag=heartrobber_temp_playerhead]
function heartrobber:macro/set_lore with storage heartrobber:cardtemp