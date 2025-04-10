$forceload add $(x) $(z)
forceload add ~ ~
$execute if block $(x) $(y) $(z) lodestone if entity @s[type=item] if data entity @s data.Thrower run function heartrobber:macro/end_relay_throw_advancement with entity @s data
$execute positioned $(x) $(y) $(z) if block ~ ~ ~ lodestone run tp @s ~ ~1 ~
$execute if block $(x) $(y) $(z) lodestone run data modify block ~ ~-0.5 ~ item set value {}
$execute positioned $(x) $(y) $(z) if block ~ ~ ~ lodestone run particle minecraft:portal ~ ~1.25 ~ 0.1 0.2 0.1 0.5 30 force
$execute if block $(x) $(y) $(z) lodestone run advancement grant @s only heartrobber:end/relay
$execute positioned $(x) $(y) $(z) if block ~ ~ ~ lodestone run playsound heartrobber:block.lodestone.teleport block @a
$execute if block $(x) $(y) $(z) lodestone align xyz positioned ~0.5 ~ ~0.5 run particle minecraft:reverse_portal ~ ~0.4 ~ 0.2 0.1 0.2 1 30 normal
$execute if block $(x) $(y) $(z) lodestone align xyz positioned ~0.5 ~ ~0.5 run playsound heartrobber:block.ender_relay.teleport block @a ~ ~0.35 ~
$forceload remove $(x) $(z)
forceload remove ~ ~