execute store result score @s heartrobber_compare run data get entity @n[type=#heartrobber:cows] Age
execute as @s[scores={heartrobber_compare=..-1}] run return 0
execute unless function heartrobber:triggered/dispenser/dispensed_horizontally run return 0
data modify entity @s Item.id set value "minecraft:milk_bucket"
execute at @n[type=#heartrobber:cows] run playsound entity.cow.milk block @a