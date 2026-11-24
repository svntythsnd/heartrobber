execute unless block ~ ~ ~ oak_sapling run return run kill @s
execute as @s[tag=!heartrobber_treeActive] run return 0
execute as @s[tag=heartrobber_treePrimed] run return run execute if block ~ ~ ~ oak_sapling[stage=1] run function heartrobber:triggered/swamp_oak/place_feature 
execute unless block ~ ~ ~ oak_sapling[stage=1] run return 0
tag @s add heartrobber_treePrimed
setblock ~ ~ ~ oak_sapling[stage=0]