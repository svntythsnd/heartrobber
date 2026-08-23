execute align xyz run particle dust{scale:0.6f, color:[1, 1, 1]} ~0.5 ~2.5 ~0.5 0.5 0.5 0.5 0 1 normal @a
#
execute align xz run tag @a[distance=..20,scores={heartrobber_health=..1}] add heartrobber_spectatorview
tag @a[gamemode=!spectator] remove heartrobber_spectatorview
execute align xz run tag @a[distance=20..] remove heartrobber_spectatorview
execute at @a[tag=heartrobber_spectatorview] run particle dust{scale:0.3f, color:[0.7f, 1f, 0.3f]} ~ ~1.5 ~ 0.5 0.5 0.5 1 10 normal @a
#
execute align xyz positioned ~0.5 ~2.5 ~0.5 run tag @p[tag=heartrobber_spectatorview,distance=..1] add heartrobber_respawn
execute as @p[tag=heartrobber_respawn] run function heartrobber:triggered/revive_check/player
execute at @p[tag=heartrobber_respawn] run kill @s
tag @a[tag=heartrobber_respawn] remove heartrobber_respawn