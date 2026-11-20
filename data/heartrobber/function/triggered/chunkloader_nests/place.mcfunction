execute if entity @n[type=marker,tag=heartrobber_chunkloader,distance=..0.01] run return run loot spawn ~ ~ ~ loot heartrobber:blocks/chunkloader
execute unless block ~ ~0.5 ~ #replaceable run loot spawn ~ ~ ~ loot heartrobber:blocks/chunkloader
summon marker ~ ~ ~ {Tags:["heartrobber_chunkloader"]}
kill