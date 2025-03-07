execute if entity @n[type=marker,tag=heartrobber_chunkloader,distance=..0.01] run loot spawn ~ ~ ~ loot heartrobber:chunkloader
execute unless entity @n[type=marker,tag=heartrobber_chunkloader,distance=..0.01] unless block ~ ~0.5 ~ #replaceable run loot spawn ~ ~ ~ loot heartrobber:chunkloader
execute unless entity @n[type=marker,tag=heartrobber_chunkloader,distance=..0.01] if block ~ ~0.5 ~ #replaceable run summon marker ~ ~ ~ {Tags:["heartrobber_chunkloader"]}
kill @s