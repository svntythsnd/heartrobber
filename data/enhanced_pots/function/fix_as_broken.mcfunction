tag @s add enhanced_pots.reserved_pot
tag @n[type=item,nbt={Age:0s},distance=..1,tag=!enhanced_pots.reserved_pot] add enhanced_pots.reserved_item
execute if entity @n[type=item,tag=enhanced_pots.reserved_item] run function enhanced_pots:fill_as_broken
execute unless data entity @s Item.components."minecraft:container" run data remove entity @s Item.components."minecraft:custom_data"
