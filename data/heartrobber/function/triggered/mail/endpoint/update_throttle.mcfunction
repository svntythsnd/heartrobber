execute if function heartrobber:triggered/mail/endpoint/bridge_throttle on passengers run return run data modify entity @s item.components."minecraft:item_model" set value "heartrobber:ender_endpoint_throttle"
execute on passengers run data modify entity @s item.components."minecraft:item_model" set value "heartrobber:ender_endpoint"
execute store result score @s heartrobber_compare run random value 1..20
execute if score @s heartrobber_compare matches 1..3 run particle minecraft:dust{color:[1,0,0],scale:1} ~ ~0.6 ~ 0.07 0 0.07 1 1