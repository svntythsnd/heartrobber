$data modify $(source)."minecraft:max_stack_size" set value 1
$data modify $(source)."minecraft:block_entity_data" set value {id:"minecraft:brewing_stand",Fuel:$(fuel),total_fuel:$(total_fuel)}
$data modify $(source)."minecraft:lore" set value [{translate:"gui.heartrobber.brewing_stand_fuel",italic:false,color:gray,extra:[{text:": $(fuel) / $(total_fuel)"}]}]