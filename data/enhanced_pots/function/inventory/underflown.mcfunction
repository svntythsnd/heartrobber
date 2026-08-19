scoreboard players operation @s enhanced_pots.item_count += @s heartrobber_compare
scoreboard players operation @s enhanced_pots.item_count -= @s enhanced_pots.virtual_count
execute if score @s enhanced_pots.item_count matches 0 run function heartrobber:marker_tick/set_clear
