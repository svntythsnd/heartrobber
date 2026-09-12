execute unless block ~ ~ ~ moving_piston run return 0
execute if data block ~ ~ ~ {blockState:"minecraft:copper_grate"} run return 1
execute if data block ~ ~ ~ {blockState:"minecraft:exposed_copper_grate"} run return 1
execute if data block ~ ~ ~ {blockState:"minecraft:weathered_copper_grate"} run return 1
execute if data block ~ ~ ~ {blockState:"minecraft:oxidized_copper_grate"} run return 1
execute if data block ~ ~ ~ {blockState:"minecraft:waxed_copper_grate"} run return 1
execute if data block ~ ~ ~ {blockState:"minecraft:waxed_exposed_copper_grate"} run return 1
execute if data block ~ ~ ~ {blockState:"minecraft:waxed_weathered_copper_grate"} run return 1
execute if data block ~ ~ ~ {blockState:"minecraft:waxed_oxidized_copper_grate"} run return 1
return 0