execute unless data block ~ ~-1 ~ {Levels:1} unless data block ~ ~-1 ~ {Levels:2} unless data block ~ ~-1 ~ {Levels:3} run tag @s remove heartrobber_respawnitem
execute unless data entity @s {Item:{count:3}} run tag @s remove heartrobber_respawnitem
execute unless block ~ ~ ~ petrified_oak_slab[type=bottom] run tag @s remove heartrobber_respawnitem
execute unless block ~ ~1 ~ petrified_oak_slab[type=top] run tag @s remove heartrobber_respawnitem
execute align xyz run particle dust{scale:0.6f, color:[1, 1, 1]} ~0.5 ~2.5 ~0.5 0.5 0.5 0.5 0 1 normal @a
#
execute align xz run tag @a[distance=..20,scores={heartrobber_health=..1}] add heartrobber_spectatorview
tag @a[gamemode=!spectator] remove heartrobber_spectatorview
execute align xz run tag @a[distance=20..] remove heartrobber_spectatorview
execute at @a[tag=heartrobber_spectatorview] run particle dust{scale:0.3f, color:[0.7f, 1f, 0.3f]} ~ ~1.5 ~ 0.5 0.5 0.5 1 10 normal @a
#
execute align xyz positioned ~0.5 ~2.5 ~0.5 run tag @p[tag=heartrobber_spectatorview,distance=..1] add heartrobber_respawn
execute as @p[tag=heartrobber_respawn] run function heartrobber:triggered/revive_check/4
execute at @p[tag=heartrobber_respawn] run kill @s
tag @a[tag=heartrobber_respawn] remove heartrobber_respawn
#
# respawn modify
data modify entity @s Age set value 0
