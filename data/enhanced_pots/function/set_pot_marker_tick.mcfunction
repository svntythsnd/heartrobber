# pot fully cleared
execute unless data block ~ ~ ~ {item:{}} if score @s enhanced_pots.item_count matches 1 run data remove entity @s data.item
execute unless data block ~ ~ ~ {item:{}} if score @s enhanced_pots.item_count matches 1 run tag @s remove pot_marker_item_set

# item added to pot

execute store result score @s heartrobber_compare run data get block ~ ~ ~ item.count
execute if score @s enhanced_pots.item_count > @s enhanced_pots.max_items as @s[scores={heartrobber_compare=1}] run function enhanced_pots:inventory/overflown_internal
execute if score @s enhanced_pots.item_count >= @s enhanced_pots.max_items as @s[scores={heartrobber_compare=2..}] run function enhanced_pots:inventory/overflown

execute unless score @s enhanced_pots.item_count >= @s enhanced_pots.max_items as @s[scores={heartrobber_compare=2..}] unless items block ~ ~ ~ container.0 #enhanced_pots:disallowed run function enhanced_pots:inventory/underflown

data modify block ~ ~ ~ item.count set value 1
execute if data block ~ ~ ~ item.components."minecraft:custom_data"."heartrobber:fake_stack" run data remove block ~ ~ ~ item.components."minecraft:max_stack_size"
execute if data block ~ ~ ~ {item:{components:{"minecraft:custom_data":{"heartrobber:fake_stack":0b}}}} run data remove block ~ ~ ~ item.components."minecraft:custom_data"
execute if data block ~ ~ ~ item.components."minecraft:custom_data" run data remove block ~ ~ ~ item.components."minecraft:custom_data"."heartrobber:fake_stack"
execute if data block ~ ~ ~ item.components run data modify entity @s data.item.components set from block ~ ~ ~ item.components
execute unless data block ~ ~ ~ item.components run data remove entity @s data.item.components
scoreboard players reset @s heartrobber_compare

# item removed from pot, but more items still in backing storage
execute unless data block ~ ~ ~ {item:{}} unless score @s enhanced_pots.item_count matches 1 run function enhanced_pots:inventory/remove

function enhanced_pots:flowers/tick
execute if data entity @s {data:{item:{id:"minecraft:gunpowder"}}} run function enhanced_pots:gunpowder/tick