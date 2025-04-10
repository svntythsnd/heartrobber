scoreboard players remove @s heartrobber_health 1
execute if score @s heartrobber_health matches 0 run function heartrobber:triggered/final_death
execute store result storage heartrobber:deathtemp health float 2 run scoreboard players get @s heartrobber_health
function heartrobber:macro/attribute with storage heartrobber:deathtemp