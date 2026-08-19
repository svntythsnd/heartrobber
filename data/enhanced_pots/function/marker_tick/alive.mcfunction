execute unless block ~ ~ ~ decorated_pot run function enhanced_pots:break_pot
execute as @s[tag=pot_marker_item_set] run function enhanced_pots:marker_tick/migrate
execute as @s[tag=!enhanced_pots.set_marker] run function enhanced_pots:marker_tick/unset
execute as @s[tag=enhanced_pots.set_marker] run function enhanced_pots:marker_tick/set
