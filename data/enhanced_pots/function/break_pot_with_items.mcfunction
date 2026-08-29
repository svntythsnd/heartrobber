# move the items into the pot item entity
execute if entity @s[tag=enhanced_pots.coagulating] run data remove entity @s data.item.components."minecraft:max_stack_size"
data modify storage enhanced_pots:broken_pot_data item set from entity @s data.item
execute if data entity @s data.item.components."minecraft:item_model" run data modify storage enhanced_pots:broken_pot_data item.model set from entity @s data.item.components."minecraft:item_model"
execute unless data entity @s data.item.components."minecraft:item_model" run data modify storage enhanced_pots:broken_pot_data item.model set from entity @s data.item.id
data modify storage enhanced_pots:broken_pot_data item merge value {components:{}}
execute store result storage enhanced_pots:broken_pot_data item.count int 1 run scoreboard players get @s enhanced_pots.item_count
$data modify storage enhanced_pots:broken_pot_data item.Age set value $(Age)s

tag @n[type=minecraft:item,nbt={Item:{id:"minecraft:decorated_pot",components:{"minecraft:custom_data":{"enhanced_pots:takes":true}}},Age:0s},distance=..1] add enhanced_pots.true_pot

# if the pot was shattered with a tool, summon the pot's items from the armor stand's item_count
execute store result storage enhanced_pots:broken_pot_data item.count int 1 run scoreboard players get @s enhanced_pots.item_count
execute unless entity @n[type=minecraft:item,tag=enhanced_pots.true_pot,distance=..1] if score @s enhanced_pots.item_count matches 1.. run function enhanced_pots:modify_pot_inventory with storage enhanced_pots:broken_pot_data item

execute if entity @n[type=minecraft:item,tag=enhanced_pots.true_pot,distance=..1] run function enhanced_pots:break_pot_with_brush