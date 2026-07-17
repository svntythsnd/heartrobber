execute as @n[type=!player,distance=..1] if data entity @s PersistenceRequired run tag @s add heartrobber_correctionHit
execute if entity @n[tag=heartrobber_correctionHit] run function heartrobber:triggered/correction_fluid/fix_mob
scoreboard players add @s heartrobber_compare 1
execute if score @s heartrobber_compare matches ..40 positioned ^ ^ ^0.1 run function heartrobber:triggered/correction_fluid/raycast/march