execute as @e[tag=heartrobber_relayPlace] at @s align xyz positioned ~0.5 ~ ~0.5 run function heartrobber:triggered/ender_relay_nests/place
execute as @e[tag=heartrobber_relay] at @s run function heartrobber:triggered/ender_relay_nests/main
execute as @e[tag=heartrobber_relayBlock] at @s positioned ~ ~-0.5 ~ unless entity @e[tag=heartrobber_relay,distance=..0.01] run kill @s