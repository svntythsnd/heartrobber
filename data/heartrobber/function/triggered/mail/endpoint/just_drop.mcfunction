execute on attacker if entity @s[gamemode=creative] run return 0
loot spawn ~ ~ ~ loot heartrobber:ender_endpoint
data modify entity @n[type=item,nbt={Age:0s,Item:{components:{"minecraft:custom_data":{"heartrobber:type":31b,"heartrobber:copy_endpoint_id":{}}}}}] Item.components."minecraft:custom_name" set from entity @s data.endpoint_id
data modify entity @n[type=item,nbt={Age:0s,Item:{components:{"minecraft:custom_data":{"heartrobber:type":31b,"heartrobber:copy_endpoint_id":{}}}}}] Item.components."minecraft:entity_data".data.endpoint_id set from entity @s data.endpoint_id
data remove entity @n[type=item,nbt={Age:0s,Item:{components:{"minecraft:custom_data":{"heartrobber:type":31b,"heartrobber:copy_endpoint_id":{}}}}}] Item.components."minecraft:custom_data"."heartrobber:copy_endpoint_id"
execute on passengers run kill @s
kill @s