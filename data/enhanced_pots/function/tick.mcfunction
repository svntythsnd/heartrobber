# game rules

execute as @e[type=marker,tag=pot_marker] at @s run function enhanced_pots:pot_marker_tick

execute as @e[type=minecraft:armor_stand,tag=pot_marker] at @s unless block ~ ~ ~ minecraft:decorated_pot run function enhanced_pots:break_pot