$forceload add $(x) $(z)
forceload add ~ ~
$execute positioned $(x) $(y) $(z) if block ~ ~ ~ lodestone run tp @s ~ ~1 ~
$execute if block $(x) $(y) $(z) lodestone run data modify block ~ ~-0.5 ~ item set value {}
$execute positioned $(x) $(y) $(z) in minecraft:the_end if block ~ ~ ~ lodestone run particle minecraft:portal ~ ~1.25 ~ 0.1 0.2 0.1 0.5 30 force
$execute positioned $(x) $(y) $(z) in minecraft:the_end if block ~ ~ ~ lodestone run playsound minecraft:item.lodestone_compass.lock player @a ~ ~ ~ 1 0.6
$execute if block $(x) $(y) $(z) lodestone align xyz positioned ~0.5 ~ ~0.5 run particle minecraft:reverse_portal ~ ~0.4 ~ 0.2 0.1 0.2 1 30 normal
$execute if block $(x) $(y) $(z) lodestone align xyz positioned ~0.5 ~ ~0.5 run playsound minecraft:entity.illusioner.cast_spell player @a ~ ~0.35 ~ 0.7 1.3
$forceload remove $(x) $(z)
forceload remove ~ ~