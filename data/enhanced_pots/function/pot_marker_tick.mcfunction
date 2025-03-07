execute unless block ~ ~ ~ decorated_pot run function enhanced_pots:break_pot
execute as @s[tag=!pot_marker_item_set] run function enhanced_pots:unset_pot_marker_tick

scoreboard players set @s enhanced_pots.max_items 96
execute if items block ~ ~ ~ container.0 #enhanced_pots:quarter_stacking run scoreboard players set @s enhanced_pots.max_items 24

execute as @s[tag=pot_marker_item_set] run function enhanced_pots:set_pot_marker_tick

# stop hopper transfer when pot is full
execute positioned ~ ~ ~1 if score @s enhanced_pots.item_count >= @s enhanced_pots.max_count if block ~ ~ ~ minecraft:hopper[facing=north] run data modify block ~ ~ ~ TransferCooldown set value 8
execute positioned ~ ~ ~-1 if score @s enhanced_pots.item_count >= @s enhanced_pots.max_count if block ~ ~ ~ minecraft:hopper[facing=south] run data modify block ~ ~ ~ TransferCooldown set value 8
execute positioned ~1 ~ ~ if score @s enhanced_pots.item_count >= @s enhanced_pots.max_count if block ~ ~ ~ minecraft:hopper[facing=west] run data modify block ~ ~ ~ TransferCooldown set value 8
execute positioned ~-1 ~ ~ if score @s enhanced_pots.item_count >= @s enhanced_pots.max_count if block ~ ~ ~ minecraft:hopper[facing=east] run data modify block ~ ~ ~ TransferCooldown set value 8
execute positioned ~ ~1 ~ if score @s enhanced_pots.item_count >= @s enhanced_pots.max_count if block ~ ~ ~ minecraft:hopper[facing=down] run data modify block ~ ~ ~ TransferCooldown set value 8