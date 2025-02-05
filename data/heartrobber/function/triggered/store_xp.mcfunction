execute store result score @s heartrobber_compare run data get entity @s Inventory[{Slot:-106b}].components."minecraft:damage"
execute if score @s heartrobber_compare matches 1.. run tag @s add heartrobber_xpStocker
execute as @s[tag=heartrobber_xpStocker] run xp add @s -1
execute as @s[tag=heartrobber_xpStocker] run item modify entity @s weapon.offhand {function:set_damage,add:true,damage:0.001}
tag @s remove heartrobber_xpStocker