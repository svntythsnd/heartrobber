$data modify entity @s Item.components merge value {"minecraft:container":[{item:{id:"$(id)",count:$(count),components:$(components)}, slot: 0}],"minecraft:item_model":"$(id)","minecraft:lore":['{"text":""}','{"text":"x$(count)","color":"blue","italic":false}'],"minecraft:max_stack_size":1,"enchantment_glint_override":true,"item_name":'{"translate":"item.enhanced_pots.filled_pot"}'}
$execute as @n[type=minecraft:item,nbt={Item:{id:"$(id)",count:1}},distance=..1] run kill @s