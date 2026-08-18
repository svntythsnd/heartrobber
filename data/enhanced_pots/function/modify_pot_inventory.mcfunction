$data modify entity @n[type=item,nbt={Age:0s,Item:{id:"$(id)"}},distance=..1] Item set value {id:"$(id)",count:$(count),components:$(components)}
$tag @n[type=item,nbt={Age:0s,Item:{id:"$(id)"}},distance=..1] add enhanced_pots.true_item
$kill @e[type=item,nbt={Age:0s,Item:{id:"$(id)"}},distance=..1,tag=!enhanced_pots.true_item]