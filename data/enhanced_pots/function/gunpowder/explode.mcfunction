scoreboard players set @s enhanced_pots.explosion_ratio 4
scoreboard players operation @s enhanced_pots.explosion_radius = @s enhanced_pots.item_count


scoreboard players operation @s enhanced_pots.explosion_radius /= @s enhanced_pots.explosion_ratio
scoreboard players add @s enhanced_pots.explosion_radius 2

execute store result storage enhanced_pots:exploding_pot_data radius int 1 run scoreboard players get @s enhanced_pots.explosion_radius
function enhanced_pots:gunpowder/summon_explosion with storage enhanced_pots:exploding_pot_data