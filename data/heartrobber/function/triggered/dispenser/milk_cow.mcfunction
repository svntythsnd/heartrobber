execute store result score @s heartrobber_compare run data get entity @n[type=#heartrobber:cows] Age
execute as @s[scores={heartrobber_compare=..-1}] run return 0
execute store result score @s heartrobber_compare run function heartrobber:triggered/dispenser/dispensed_direction
execute as @s[scores={heartrobber_compare=0}] run return 0
data modify entity @s Item.id set value "minecraft:milk_bucket"
execute at @n[type=#heartrobber:cows] run playsound entity.cow.milk block @a