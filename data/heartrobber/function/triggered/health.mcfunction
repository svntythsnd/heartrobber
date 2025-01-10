scoreboard players add @s heartrobber_health 1
execute store result storage heartrobber:temp health float 2 run scoreboard players get @s heartrobber_health
execute at @s run playsound minecraft:block.nether_sprouts.place neutral @a ~ ~ ~ 1 0.2
function heartrobber:macro/attribute with storage heartrobber:temp
advancement revoke @s only heartrobber:heart_consumed