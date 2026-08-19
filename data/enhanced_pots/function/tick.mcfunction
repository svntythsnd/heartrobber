execute as @e[type=marker,tag=pot_marker] at @s run function enhanced_pots:marker_tick/root
execute as @a[scores={enhanced_pots.broke_pot=1..}] run function enhanced_pots:broke_pot