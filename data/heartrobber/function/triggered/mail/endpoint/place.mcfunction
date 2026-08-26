execute unless block ~ ~ ~ #replaceable run return run function heartrobber:triggered/mail/endpoint/drop
execute unless block ~ ~-1 ~ dispenser run return run function heartrobber:triggered/mail/endpoint/drop
execute if block ~ ~-1 ~ dispenser[facing=up] run return run function heartrobber:triggered/mail/endpoint/drop
execute unless data entity @s data.endpoint_id run return run function heartrobber:triggered/mail/endpoint/drop
execute align xyz if entity @n[type=interaction,tag=heartrobber_endpoint,dy=0] run return run function heartrobber:triggered/mail/endpoint/drop
execute unless function heartrobber:triggered/mail/endpoint/validate_id run return run function heartrobber:triggered/mail/endpoint/drop
execute unless function heartrobber:triggered/mail/endpoint/check_id_bridge run return run function heartrobber:triggered/mail/endpoint/drop

execute align xyz positioned ~0.5 ~ ~0.5 run summon interaction ~ ~ ~ {width:0.625f,height:0.25f,Tags:["heartrobber_endpoint"],Passengers:[{id:"minecraft:item_display",item:{id:"minecraft:clock",components:{"minecraft:item_model":"heartrobber:ender_endpoint"}},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.25f,0f],scale:[1f,1f,1f]}}]}
data modify entity @n[type=interaction,tag=heartrobber_endpoint,dy=0] data.endpoint_id set from entity @s data.endpoint_id
execute as @n[type=interaction,tag=heartrobber_endpoint,dy=0] run function heartrobber:triggered/mail/endpoint/set_custom_name with entity @s data
setblock ~ ~ ~ air
kill @s
