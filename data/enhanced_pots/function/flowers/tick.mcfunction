execute as @s[tag=!pot_marker_flower,scores={enhanced_pots.item_count=1}] unless items block ~ ~ ~ container.0 #enhanced_pots:plantable/waterlogged if items block ~ ~ ~ container.0 #enhanced_pots:plantable/tall run function enhanced_pots:flowers/setup_tall_flower with entity @s data.item
execute as @s[tag=!pot_marker_flower,scores={enhanced_pots.item_count=1}] if items block ~ ~ ~ container.0 #enhanced_pots:plantable/waterlogged if predicate enhanced_pots:water if items block ~ ~ ~ container.0 #enhanced_pots:plantable/tall run function enhanced_pots:flowers/setup_tall_flower with entity @s data.item
execute as @s[tag=!pot_marker_flower,scores={enhanced_pots.item_count=1}] unless items block ~ ~ ~ container.0 #enhanced_pots:plantable/waterlogged if items block ~ ~ ~ container.0 #enhanced_pots:plantable/small run function enhanced_pots:flowers/setup_small_flower with entity @s data.item
execute as @s[tag=!pot_marker_flower,scores={enhanced_pots.item_count=1}] if items block ~ ~ ~ container.0 #enhanced_pots:plantable/waterlogged if predicate enhanced_pots:water if items block ~ ~ ~ container.0 #enhanced_pots:plantable/small run function enhanced_pots:flowers/setup_small_flower with entity @s data.item

execute as @s[tag=pot_marker_flower] unless items block ~ ~ ~ container.0 #enhanced_pots:plantable run tag @s remove pot_marker_flower
execute as @s[tag=pot_marker_flower,scores={enhanced_pots.item_count=2..}] run tag @s remove pot_marker_flower
execute as @s[tag=pot_marker_flower] if items block ~ ~ ~ container.0 #enhanced_pots:plantable/waterlogged unless predicate enhanced_pots:water run tag @s remove pot_marker_flower

execute as @e[type=block_display,tag=pot_contents_flower] at @s run function enhanced_pots:flowers/tick_flower_display with entity @s block_state
execute as @s[tag=!pot_marker_flower] positioned ~-0.5 ~1.245 ~-0.5 run kill @n[tag=pot_contents_flower,distance=..0.01]