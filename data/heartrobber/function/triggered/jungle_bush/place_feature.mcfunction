setblock ~ ~ ~ air
place feature jungle_bush
execute unless block ~ ~ ~ air run return run kill @s
tag @s remove heartrobber_treePrimed
setblock ~ ~ ~ jungle_sapling