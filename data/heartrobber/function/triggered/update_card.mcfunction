data modify storage heartrobber:cardtemp old set from entity @s SelectedItem.components."minecraft:lore"[0]."extra"
data modify storage heartrobber:cardtemp UUID set from entity @s SelectedItem.components."minecraft:custom_data"."heartrobber:uuid"
function heartrobber:macro/recall_uuid_name with storage heartrobber:cardtemp
function heartrobber:macro/update_lore with storage heartrobber:cardtemp