data modify storage heartrobber:mail temp.sender set from entity @s Item.components."minecraft:lore"[0].text
data modify storage heartrobber:mail temp.recipient set from entity @s Item.components."minecraft:lore"[0].extra[1]
data modify storage heartrobber:mail temp.components set from entity @s Item.components
data modify storage heartrobber:mail temp.components."minecraft:custom_data"."heartrobber:sent" set value true
data modify storage heartrobber:mail temp.leading_char set string storage heartrobber:mail temp.sender 0 1
execute if data storage heartrobber:mail temp{leading_char:"$"} run return run function heartrobber:triggered/mail/send_from_endpoint with storage heartrobber:mail temp
return run function heartrobber:triggered/mail/send with storage heartrobber:mail temp