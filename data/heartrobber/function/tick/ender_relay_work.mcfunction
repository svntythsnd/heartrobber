execute as @e[tag=heartrobber_relay] at @s positioned ~ ~0.5 ~ if block ~ ~2 ~ #pressure_plates[power=1] positioned ~ ~1.5 ~ run function heartrobber:triggered/ender_relay_start
execute as @e[tag=heartrobber_relay] at @s positioned ~ ~0.5 ~ if block ~ ~2 ~ #pressure_plates[power=2] positioned ~ ~1.5 ~ run function heartrobber:triggered/ender_relay_start
execute as @e[tag=heartrobber_relay] at @s positioned ~ ~0.5 ~ if block ~ ~2 ~ #pressure_plates[power=3] positioned ~ ~1.5 ~ run function heartrobber:triggered/ender_relay_start
execute as @e[tag=heartrobber_relay] at @s positioned ~ ~0.5 ~ if block ~ ~2 ~ #pressure_plates[power=4] positioned ~ ~1.5 ~ run function heartrobber:triggered/ender_relay_start
execute as @e[tag=heartrobber_relay] at @s positioned ~ ~0.5 ~ if block ~ ~2 ~ #pressure_plates[power=5] positioned ~ ~1.5 ~ run function heartrobber:triggered/ender_relay_start
execute as @e[tag=heartrobber_relay] at @s positioned ~ ~0.5 ~ if block ~ ~2 ~ #pressure_plates[power=6] positioned ~ ~1.5 ~ run function heartrobber:triggered/ender_relay_start
execute as @e[tag=heartrobber_relay] at @s positioned ~ ~0.5 ~ if block ~ ~2 ~ #pressure_plates[power=7] positioned ~ ~1.5 ~ run function heartrobber:triggered/ender_relay_start
execute as @e[tag=heartrobber_relay] at @s positioned ~ ~0.5 ~ if block ~ ~2 ~ #pressure_plates[power=8] positioned ~ ~1.5 ~ run function heartrobber:triggered/ender_relay_start
execute as @e[tag=heartrobber_relay] at @s positioned ~ ~0.5 ~ if block ~ ~2 ~ #pressure_plates[power=9] positioned ~ ~1.5 ~ run function heartrobber:triggered/ender_relay_start
execute as @e[tag=heartrobber_relay] at @s positioned ~ ~0.5 ~ if block ~ ~2 ~ #pressure_plates[powered=true] positioned ~ ~1.5 ~ run function heartrobber:triggered/ender_relay_start
execute as @e[tag=heartrobber_relaySoon] at @s at @n[tag=heartrobber_relay] positioned ~ ~2 ~ run tag @s[distance=1..] remove heartrobber_relaySoon