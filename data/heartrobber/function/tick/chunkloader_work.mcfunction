execute as @e[tag=heartrobber_chunkloader] store result score @s heartrobber_chunkLoaded at @s run forceload query ~ ~
execute as @e[tag=heartrobber_chunkloader] at @s unless loaded positioned ~ ~0.5 ~ if data entity @n[tag=heartrobber_chunkloaderBlock,distance=..0.01] {item:{components:{"minecraft:item_model":"heartrobber:chunkloader_on"}}} run tag @s add heartrobber_working
execute as @e[tag=heartrobber_chunkloader] at @s unless loaded positioned ~ ~0.5 ~ if data entity @n[tag=heartrobber_chunkloaderBlock,distance=..0.01] {item:{components:{"minecraft:item_model":"heartrobber:chunkloader_on"}}} run tag @s add heartrobber_working
execute as @e[tag=heartrobber_working] at @s unless loaded positioned ~ ~0.5 ~ if data entity @n[tag=heartrobber_chunkloaderBlock,distance=..0.01] {item:{components:{"minecraft:item_model":"heartrobber:chunkloader_on"}}} run forceload add ~ ~
execute as @e[tag=heartrobber_working] at @s if loaded positioned ~ ~0.5 ~ if data entity @n[tag=heartrobber_chunkloaderBlock,distance=..0.01] {item:{components:{"minecraft:item_model":"heartrobber:chunkloader"}}} run forceload remove ~ ~
execute as @e[tag=heartrobber_working] at @s unless loaded positioned ~ ~0.5 ~ if data entity @n[tag=heartrobber_chunkloaderBlock,distance=..0.01] {item:{components:{"minecraft:item_model":"heartrobber:chunkloader"}}} run tag @s remove heartrobber_working
