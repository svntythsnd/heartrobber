execute if entity @n[tag=heartrobber_chunkloader,distance=..0.01] run loot spawn ~ ~ ~ loot heartrobber:chunkloader
execute unless entity @n[tag=heartrobber_chunkloader,distance=..0.01] unless block ~ ~0.5 ~ #replaceable run loot spawn ~ ~ ~ loot heartrobber:chunkloader
execute unless entity @n[tag=heartrobber_chunkloader,distance=..0.01] if block ~ ~0.5 ~ #replaceable run summon armor_stand ~ ~ ~ {Invisible:1b,Marker:1b,Tags:["heartrobber_chunkloader"]}
kill @s