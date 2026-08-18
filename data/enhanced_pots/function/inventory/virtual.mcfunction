scoreboard players operation @s enhanced_pots.virtual_count = @s enhanced_pots.item_count
scoreboard players set @s heartrobber_compare 2
scoreboard players operation @s enhanced_pots.virtual_count *= @s heartrobber_compare
scoreboard players set @s heartrobber_compare 3
scoreboard players operation @s enhanced_pots.virtual_count /= @s heartrobber_compare
scoreboard players set @s[scores={enhanced_pots.virtual_count=0}] enhanced_pots.virtual_count 1
execute store result block ~ ~ ~ item.count int 1 run scoreboard players get @s enhanced_pots.virtual_count