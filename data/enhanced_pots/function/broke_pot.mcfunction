execute at @s as @n[type=item,nbt={Item:{id:"minecraft:decorated_pot","components":{"minecraft:custom_data":{"enhanced_pots:takes":true}}},Age:0s},distance=..6] unless data entity @s Item.components."minecraft:container" at @s run function enhanced_pots:fix_as_broken
scoreboard players reset @s enhanced_pots.broke_pot
