execute as @e[tag=heartrobber_relayPlace] at @s align xyz positioned ~0.5 ~ ~0.5 unless entity @e[tag=heartrobber_relay,distance=..0.01] run summon armor_stand ~ ~ ~ {Invisible:1b,Marker:1b,Tags:["heartrobber_relay"]}
execute as @e[tag=heartrobber_relayPlace] run kill @s
execute as @e[tag=heartrobber_relay] at @s if block ~ ~ ~ glass align xyz positioned ~0.5 ~0.5 ~0.5 unless entity @e[tag=heartrobber_relayBlock,distance=..0.01] run summon item_display ~ ~ ~ {Tags:["heartrobber_relayBlock"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],scale:[1.0001f,1.0001f,1.0001f],translation:[0f,0f,0f]},item:{id:trial_key,components:{"minecraft:item_model":"heartrobber:ender_relay"}},view_range:2f}
execute as @e[tag=heartrobber_relay] at @s positioned ~ ~0.5 ~ unless entity @e[tag=heartrobber_relayBlock,distance=..0.01] run setblock ~ ~ ~ glass destroy
execute as @e[tag=heartrobber_relay] at @s positioned ~ ~0.5 ~ unless entity @e[tag=heartrobber_relayBlock,distance=..0.01] run playsound block.glass.place block @a ~0.5 ~ ~0.5
execute as @e[tag=heartrobber_relayBlock] at @s positioned ~ ~-0.5 ~ unless entity @e[tag=heartrobber_relay,distance=..0.01] run kill @s
execute as @e[tag=heartrobber_relay] at @s unless block ~ ~0.5 ~ glass run kill @n[type=item,nbt={Age:0s},distance=..1]
execute as @e[tag=heartrobber_relay] at @s unless block ~ ~0.5 ~ glass run loot spawn ~ ~ ~ loot heartrobber:ender_relay
execute as @e[tag=heartrobber_relay] at @s unless block ~ ~0.5 ~ glass run kill @s