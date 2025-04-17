playsound heartrobber:item.envelope.close neutral @a
data modify storage heartrobber:mail temp.recipient set from entity @s equipment.offhand.components."minecraft:custom_name"
item modify entity @s weapon.offhand {function:set_components,components:{max_stack_size:1,item_model:"heartrobber:envelope",custom_data:{"heartrobber:type":19b,"heartrobber:sent":false,"heartrobber:envelope":{id:"minecraft:air",components:{},count:1}},item_name:{"translate":"item.heartrobber.envelope"},"!custom_name":{}}}
loot spawn ~ ~ ~ loot heartrobber:player_head
tag @n[type=item,nbt={Item:{id:"minecraft:player_head"},Age:0s},distance=..0.01] add heartrobber_temp_playerhead
execute as @e[tag=heartrobber_temp_playerhead,distance=..0.01] run data modify storage heartrobber:mail temp.sender set from entity @s Item.components."minecraft:profile".name
kill @e[tag=heartrobber_temp_playerhead,distance=..0.01]
function heartrobber:triggered/mail/envelope/set_route with storage heartrobber:mail temp
advancement revoke @s only heartrobber:using_empty_envelope_off