# move the items into the pot item entity
data modify storage enhanced_pots:broken_pot_data item set from entity @s ArmorItems[0]
data modify storage enhanced_pots:broken_pot_data item merge value {components:{}}
execute store result storage enhanced_pots:broken_pot_data item.count int 1 run scoreboard players get @s enhanced_pots.item_count
execute as @n[type=minecraft:item,nbt={Item:{id:"minecraft:decorated_pot",components:{"minecraft:custom_data":{"enhanced_pots:takes":true}}}},distance=..1] run function enhanced_pots:fill_broken_pot with storage enhanced_pots:broken_pot_data item

# if the pot was shattered with a tool, summon the pot's items from the armor stand's item_count
execute store result storage enhanced_pots:broken_pot_data item.count int 1 run scoreboard players get @s enhanced_pots.item_count
execute unless data entity @n[type=minecraft:item,nbt={Item:{id:"minecraft:decorated_pot"}},distance=..1] {Item:{components:{"minecraft:custom_data":{"enhanced_pots:takes":true}}}} unless score @s enhanced_pots.item_count matches 0 run function enhanced_pots:modify_pot_inventory with storage enhanced_pots:broken_pot_data item

# explode pot if hit with a flaming arrow
execute if data entity @s {ArmorItems:[{id:"minecraft:gunpowder"}]} at @n[type=minecraft:arrow,distance=..2] unless data entity @s {Fire: -1s} run function enhanced_pots:gunpowder/explode

kill @s