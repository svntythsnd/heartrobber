scoreboard players set @e[distance=..1,tag=!heartrobber_relaySoon] heartrobber_relayCooldown 40
tag @e[distance=..1] add heartrobber_relaySoon
execute as @e[distance=..1, type=item, tag=heartrobber_relaySoon] if data entity @s Thrower run data modify entity @s data.Thrower set from entity @s Thrower
execute as @e[distance=..1, tag=heartrobber_relaySoon,scores={heartrobber_relayCooldown=..0}] at @s run function heartrobber:triggered/ender_relay_teleport