data modify storage heartrobber:mail temp.sender set from entity @s SelectedItem.components."minecraft:lore"[0].text
data modify storage heartrobber:mail temp.recipient set from entity @s SelectedItem.components."minecraft:lore"[0].extra[1]
data modify storage heartrobber:mail temp.components set from entity @s SelectedItem.components
data modify storage heartrobber:mail temp.components."minecraft:custom_data"."heartrobber:sent" set value true
execute store result score @s heartrobber_compare run time query day
execute store result score @s heartrobber_compare2 run data get storage heartrobber:config letterCooldown
scoreboard players operation @s heartrobber_compare += @s heartrobber_compare2
execute store result storage heartrobber:mail temp.due int 1 run scoreboard players get @s heartrobber_compare
item replace entity @s weapon.mainhand with air
data modify storage heartrobber:mail envelopes prepend from storage heartrobber:mail temp
function heartrobber:triggered/mail/send with storage heartrobber:mail temp
advancement grant @s only heartrobber:metallurgy/send
playsound heartrobber:item.envelope.send neutral @a
advancement revoke @s only heartrobber:using_unsent_envelope