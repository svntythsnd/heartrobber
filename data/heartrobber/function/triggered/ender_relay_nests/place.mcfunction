execute if entity @n[type=marker,tag=heartrobber_relay,distance=..0.01] run return run loot spawn ~ ~ ~ loot heartrobber:blocks/ender_relay
execute unless block ~ ~0.5 ~ #replaceable run return run loot spawn ~ ~ ~ loot heartrobber:blocks/ender_relay
summon marker ~ ~ ~ {Tags:["heartrobber_relay"]}
kill