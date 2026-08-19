execute store result score @s heartrobber_compare run data get entity @s data.item.components."minecraft:max_stack_size"
execute unless score @s heartrobber_compare matches 0 run function enhanced_pots:get_max_pot_stack
execute if score @s heartrobber_compare matches 0 run data modify storage enhanced_pots:broken_pot_data max_stack_size set value 96
scoreboard players set @s[scores={heartrobber_compare=0}] heartrobber_compare 16
execute if score @s enhanced_pots.item_count > @s heartrobber_compare as @n[type=minecraft:item,tag=enhanced_pots.true_pot,distance=..1] run function enhanced_pots:pre_fill with storage enhanced_pots:broken_pot_data
execute if score @s enhanced_pots.item_count <= @s heartrobber_compare as @n[type=minecraft:item,tag=enhanced_pots.true_pot,distance=..1] run function enhanced_pots:fill_broken_pot with storage enhanced_pots:broken_pot_data item