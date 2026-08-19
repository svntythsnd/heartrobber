# item added/removed

execute store result score @s heartrobber_compare run data get block ~ ~ ~ item.count
execute unless data block ~ ~ ~ item run scoreboard players set @s heartrobber_compare 0
data modify block ~ ~ ~ item set from entity @s[scores={heartrobber_compare=0}] data.item
execute unless score @s heartrobber_compare = @s enhanced_pots.virtual_count run function enhanced_pots:inventory/underflown

function enhanced_pots:inventory/virtual

execute if data block ~ ~ ~ item.components."minecraft:custom_data"."heartrobber:fake_stack" unless data block ~ ~ ~ item.components."minecraft:custom_data"."heartrobber:old_stack" run data remove block ~ ~ ~ item.components."minecraft:max_stack_size"
execute if data block ~ ~ ~ item.components."minecraft:custom_data"."heartrobber:fake_stack" if data block ~ ~ ~ item.components."minecraft:custom_data"."heartrobber:old_stack" run data modify block ~ ~ ~ item.components."minecraft:max_stack_size" set from block ~ ~ ~ item.components."minecraft:custom_data"."heartrobber:old_stack"
execute if data block ~ ~ ~ {item:{components:{"minecraft:custom_data":{"heartrobber:fake_stack":0b}}}} run data remove block ~ ~ ~ item.components."minecraft:custom_data"
execute if data block ~ ~ ~ item.components."minecraft:custom_data" run data remove block ~ ~ ~ item.components."minecraft:custom_data"."heartrobber:fake_stack"
execute if data block ~ ~ ~ item.components."minecraft:custom_data" run data remove block ~ ~ ~ item.components."minecraft:custom_data"."heartrobber:old_stack"
execute if data block ~ ~ ~ item.components run data modify entity @s data.item.components set from block ~ ~ ~ item.components
execute unless data block ~ ~ ~ item.components run data remove entity @s data.item.components

function enhanced_pots:flowers/tick
execute if data entity @s {data:{item:{id:"minecraft:gunpowder"}}} run function enhanced_pots:gunpowder/tick