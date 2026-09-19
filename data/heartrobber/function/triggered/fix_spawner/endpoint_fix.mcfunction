loot spawn ~ ~ ~ loot heartrobber:ender_endpoint
data modify entity @n[type=item,nbt={Age:0s,Item:{components:{"minecraft:custom_data":{"heartrobber:type":31b,"heartrobber:copy_endpoint_id":{}}}}}] Item.components."minecraft:custom_name" set from block ~ ~ ~ SpawnData.entity.data.endpoint_id
data remove entity @n[type=item,nbt={Age:0s,Item:{components:{"minecraft:custom_data":{"heartrobber:type":31b,"heartrobber:copy_endpoint_id":{}}}}}] Item.components."heartrobber:type"."heartrobber:copy_endpoint_id"
data modify block ~ ~ ~ SpawnPotentials set value []
data modify block ~ ~ ~ SpawnData.entity set value {}