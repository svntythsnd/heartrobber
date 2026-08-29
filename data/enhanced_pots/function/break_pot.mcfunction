execute unless score @s enhanced_pots.item_count matches 1.. run data remove entity @n[type=item,nbt={Item:{id:"minecraft:decorated_pot"},Age:0s},distance=..1] Item.components."minecraft:custom_data"
$execute if score @s enhanced_pots.item_count matches 1.. run function enhanced_pots:break_pot_with_items {Age:$(Age)}

# explode pot if hit with a flaming arrow
execute if data entity @s {data:{item:{id:"minecraft:gunpowder"}}} if entity @n[type=minecraft:arrow,distance=..2,nbt=!{Fire:0s}] run function enhanced_pots:gunpowder/explode

execute positioned ~-0.5 ~1.245 ~-0.5 run kill @n[tag=pot_contents_flower,distance=..0.01]

kill @s