execute as @e[type=item,nbt={Item:{id:"minecraft:honey_bottle"}}] at @s if predicate heartrobber:crystallization run tag @s add heartrobber_honeyCrystallize
scoreboard players add @e[tag=heartrobber_honeyCrystallize] heartrobber_crystallizeTick 1
execute as @e[tag=heartrobber_honeyCrystallize] at @s run particle minecraft:snowflake ~ ~0.3 ~ 0.1 0.1 0.1 0 1 normal
execute as @e[tag=heartrobber_honeyCrystallize,scores={heartrobber_crystallizeTick=80..}] at @s run loot spawn ~ ~ ~ loot heartrobber:honey_crystallize
execute as @e[tag=heartrobber_honeyCrystallize,scores={heartrobber_crystallizeTick=80..}] run item modify entity @s container.0 {function:set_count,add:true,count:-1}
execute as @e[tag=heartrobber_honeyCrystallize,scores={heartrobber_crystallizeTick=80..}] at @s run playsound heartrobber:item.honey.crystallize block @a
execute as @e[tag=heartrobber_honeyCrystallize,scores={heartrobber_crystallizeTick=80..}] run scoreboard players reset @s heartrobber_crystallizeTick
execute as @e[tag=heartrobber_honeyCrystallize] at @s unless predicate heartrobber:crystallization run scoreboard players reset @s heartrobber_crystallizeTick
execute as @e[tag=heartrobber_honeyCrystallize] at @s unless predicate heartrobber:crystallization run tag @s remove heartrobber_honeyCrystallize