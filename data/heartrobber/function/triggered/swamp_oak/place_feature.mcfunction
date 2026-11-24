setblock ~ ~ ~ air
place feature swamp_oak
execute unless block ~ ~ ~ air run return run kill @s
tag @s remove heartrobber_treePrimed
setblock ~ ~ ~ oak_sapling