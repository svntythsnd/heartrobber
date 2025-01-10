execute as @e[type=item,nbt={Item:{count:3, components:{"minecraft:custom_data":{"heartrobber:type":0b}}}},tag=!heartrobber_respawnitem] at @s if block ~ ~ ~ petrified_oak_slab[type=bottom] if block ~ ~1 ~ petrified_oak_slab[type=top] run tag @s add heartrobber_respawnitemcheck
execute as @e[tag=heartrobber_respawnitemcheck] at @s if data block ~ ~-1 ~ {Levels:1} run tag @s add heartrobber_respawnitem1
execute as @e[tag=heartrobber_respawnitemcheck] at @s if data block ~ ~-1 ~ {Levels:2} run tag @s add heartrobber_respawnitem1
execute as @e[tag=heartrobber_respawnitemcheck] at @s if data block ~ ~-1 ~ {Levels:3} run tag @s add heartrobber_respawnitem1
execute as @e[tag=heartrobber_respawnitem1] run tag @s remove heartrobber_respawnitemcheck
execute at @e[tag=heartrobber_respawnitem1] run playsound minecraft:entity.illusioner.mirror_move player @a ~ ~ ~ 2 1.5
execute as @e[tag=heartrobber_respawnitem1] run tag @s add heartrobber_respawnitem
execute as @e[tag=heartrobber_respawnitem1] run tag @s remove heartrobber_respawnitem1
execute as @e[tag=heartrobber_respawnitem] at @s unless data block ~ ~-1 ~ {Levels:1} unless data block ~ ~-1 ~ {Levels:2} unless data block ~ ~-1 ~ {Levels:3} run tag @s remove heartrobber_respawnitem
execute as @e[tag=heartrobber_respawnitem] unless data entity @s {Item:{count:3}} run tag @s remove heartrobber_respawnitem
execute as @e[tag=heartrobber_respawnitem] at @s unless block ~ ~ ~ petrified_oak_slab[type=bottom] run tag @s remove heartrobber_respawnitem
execute as @e[tag=heartrobber_respawnitem] at @s unless block ~ ~1 ~ petrified_oak_slab[type=top] run tag @s remove heartrobber_respawnitem
execute at @e[tag=heartrobber_respawnitem] align xyz run particle dust{scale:0.6f, color:[1, 1, 1]} ~0.5 ~2.5 ~0.5 0.5 0.5 0.5 0 1 normal @a
#
execute at @e[tag=heartrobber_respawnitem] align xz run tag @a[distance=..20,scores={heartrobber_health=..1}] add heartrobber_spectatorview
tag @a[gamemode=!spectator] remove heartrobber_spectatorview
execute at @e[tag=heartrobber_respawnitem] align xz run tag @a[distance=20..] remove heartrobber_spectatorview
execute at @e[tag=heartrobber_spectatorview] run particle dust{scale:0.3f, color:[0.7f, 1f, 0.3f]} ~ ~1.5 ~ 0.5 0.5 0.5 1 10 normal @a
#
execute at @e[tag=heartrobber_respawnitem] align xyz positioned ~0.5 ~2.5 ~0.5 run tag @p[tag=heartrobber_spectatorview,distance=..1] add heartrobber_respawn
execute at @e[tag=heartrobber_respawnitem] align xyz run tp @p[tag=heartrobber_respawn] ~0.5 ~2.5 ~0.5
execute at @e[tag=heartrobber_respawnitem] as @p[tag=heartrobber_respawn] align xz run playsound minecraft:item.totem.use player @a ~0.5 ~ ~0.5 1 0.5
execute at @e[tag=heartrobber_respawnitem] as @p[tag=heartrobber_respawn] align xz run particle dust_color_transition{scale:0.7f, from_color:[1, 1, 5], to_color:[1, 1, 1]} ~0.5 ~1 ~0.5 0.5 0.5 0.5 0 20 normal @a
execute at @e[tag=heartrobber_respawnitem] run gamemode survival @p[tag=heartrobber_respawn]
execute at @e[tag=heartrobber_respawn] run kill @n[tag=heartrobber_respawnitem]
execute as @e[tag=heartrobber_respawn] run function heartrobber:triggered/health
tag @a[tag=heartrobber_respawn] remove heartrobber_respawn
#
# respawn modify
execute as @e[tag=heartrobber_respawnitem] run data modify entity @s Age set value 0