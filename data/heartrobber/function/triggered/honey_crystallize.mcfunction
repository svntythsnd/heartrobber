scoreboard players add @s heartrobber_crystallizeTick 1
particle minecraft:snowflake ~ ~0.3 ~ 0.1 0.1 0.1 0 1 normal
execute if score @s heartrobber_crystallizeTick matches 80.. run loot spawn ~ ~ ~ loot heartrobber:honey_crystallize
execute if score @s heartrobber_crystallizeTick matches 80.. run item modify entity @s container.0 {function:set_count,add:true,count:-1}
execute if score @s heartrobber_crystallizeTick matches 80.. at @s run playsound heartrobber:item.honey.crystallize block @a
execute if score @s heartrobber_crystallizeTick matches 80.. run scoreboard players reset @s heartrobber_crystallizeTick
execute unless predicate heartrobber:crystallization run scoreboard players reset @s heartrobber_crystallizeTick
execute unless predicate heartrobber:crystallization run tag @s remove heartrobber_honeyCrystallize