$execute store success score @s heartrobber_compare run tp @n[type=armor_stand,nbt={UUID:$(UUID)}]
execute unless score @s heartrobber_compare matches 0 run return 0
loot spawn ~ ~ ~ kill @s
kill