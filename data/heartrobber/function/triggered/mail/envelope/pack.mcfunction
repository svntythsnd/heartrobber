data modify storage heartrobber:mail temp.recipient set from entity @s SelectedItem.components."minecraft:custom_name"
item replace entity @s weapon.offhand from entity @s weapon.mainhand
item modify entity @s weapon.offhand {function:set_count,count:1}
item modify entity @s weapon.mainhand {function:set_count,count:-1,add:true}
$item modify entity @s weapon.offhand {function:set_components,components:{max_stack_size:1,item_model:"heartrobber:envelope",custom_data:{"heartrobber:type":19b,"heartrobber:sent":false,"heartrobber:envelope":{id:"$(id)",components:$(components),count:$(count)}},item_name:{"translate":"item.heartrobber.envelope", "fallback":"item.heartrobber.envelope"},"!custom_name":{}}}
loot spawn ~ ~ ~ loot heartrobber:player_head
tag @n[type=item,nbt={Item:{id:"minecraft:player_head"},Age:0s},distance=..0.01] add heartrobber_temp_playerhead
execute as @e[tag=heartrobber_temp_playerhead,distance=..0.01] run data modify storage heartrobber:mail temp.sender set from entity @s Item.components."minecraft:profile".name
kill @e[tag=heartrobber_temp_playerhead,distance=..0.01]
function heartrobber:triggered/mail/envelope/set_route with storage heartrobber:mail temp