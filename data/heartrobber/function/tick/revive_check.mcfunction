execute as @e[type=item,nbt={Item:{count:3, components:{"minecraft:custom_data":{"heartrobber:type":0b}}}},tag=!heartrobber_respawnitem] at @s if block ~ ~ ~ petrified_oak_slab[type=bottom] if block ~ ~1 ~ petrified_oak_slab[type=top] run tag @s add heartrobber_respawnitemcheck
execute as @e[tag=heartrobber_respawnitemcheck] at @s run function heartrobber:triggered/revive_check/1
execute as @e[tag=heartrobber_respawnitem1] at @s run function heartrobber:triggered/revive_check/2
execute as @e[tag=heartrobber_respawnitem] at @s run function heartrobber:triggered/revive_check/3