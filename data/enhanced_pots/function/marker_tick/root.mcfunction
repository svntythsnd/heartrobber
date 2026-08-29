execute if block ~ ~ ~ moving_piston run return run function enhanced_pots:break_pot {Age:1}
execute unless block ~ ~ ~ decorated_pot run return run function enhanced_pots:break_pot {Age:0s}
scoreboard players remove @s[scores={enhanced_pots.dispenser_check_time=1..}] enhanced_pots.dispenser_check_time 1
execute as @s[scores={enhanced_pots.dispenser_check_time=0},tag=!enhanced_pots.dispensed_marker] run return run function enhanced_pots:break_by_dispenser
execute unless score @s enhanced_pots.dispenser_check_time matches 1.. run scoreboard players set @s enhanced_pots.dispenser_check_time -1
execute as @s[tag=pot_marker_item_set] run function enhanced_pots:marker_tick/migrate
execute as @s[tag=!enhanced_pots.set_marker] run function enhanced_pots:marker_tick/unset
execute as @s[tag=enhanced_pots.set_marker] run function enhanced_pots:marker_tick/set
execute if function enhanced_pots:dispenser_with_brush_activated run return run scoreboard players set @s[scores={enhanced_pots.dispenser_check_time=-1}] enhanced_pots.dispenser_check_time 4
tag @s remove enhanced_pots.dispensed_marker