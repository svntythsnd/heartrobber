$execute store success score @s heartrobber_compare run tp @n[type=armor_stand,nbt={UUID:$(UUID)}]
execute as @s[scores={heartrobber_compare=0}] run loot spawn ~ ~ ~ kill @s
kill @s[scores={heartrobber_compare=0}]