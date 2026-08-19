scoreboard players set @s heartrobber_compare 1
execute unless data block ~ ~ ~ item if score @s enhanced_pots.item_count matches 1 run scoreboard players set @s heartrobber_compare 0
execute as @s[scores={heartrobber_compare=0}] run function enhanced_pots:marker_tick/set_clear
execute as @s[scores={heartrobber_compare=1}] run function enhanced_pots:marker_tick/set_true
