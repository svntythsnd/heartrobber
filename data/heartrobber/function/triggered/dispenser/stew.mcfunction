execute store result score @s heartrobber_compare run data get entity @n[type=mooshroom] Age
execute as @s[scores={heartrobber_compare=..-1}] run return 0

execute unless function heartrobber:triggered/dispenser/dispensed_horizontally run return 0

execute if data entity @n[type=mooshroom] {Type:brown} if data entity @n[type=mooshroom] stew_effects if function heartrobber:triggered/dispenser/special_stew run return 0

data modify entity @s Item.id set value "minecraft:mushroom_stew"
execute at @n[type=mooshroom] run playsound entity.mooshroom.milk block @a