scoreboard players operation @s heartrobber_compare2 = @s enhanced_pots.item_count
scoreboard players operation @s heartrobber_compare2 -= @s enhanced_pots.max_items
execute store result entity @s data.count int 1 run scoreboard players get @s heartrobber_compare2
function enhanced_pots:summon_pot_overflow with entity @s data
scoreboard players remove @s enhanced_pots.item_count 1