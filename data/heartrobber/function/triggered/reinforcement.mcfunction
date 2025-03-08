execute store result score @s heartrobber_compare run data get entity @s Inventory[{Slot:-106b}].components."minecraft:max_damage"
execute store result score @s heartrobber_compare2 run data get entity @s Inventory[{Slot:-106b}].components."minecraft:damage"
scoreboard players add @s heartrobber_compare 500
scoreboard players add @s heartrobber_compare2 500
scoreboard players operation @s heartrobber_compare3 = @s heartrobber_compare
scoreboard players operation @s heartrobber_compare3 -= @s heartrobber_compare2
execute store result storage heartrobber:xptemp max int 1 run scoreboard players get @s heartrobber_compare
execute store result storage heartrobber:xptemp damage int 1 run scoreboard players get @s heartrobber_compare2
execute store result storage heartrobber:xptemp xp int 1 run scoreboard players get @s heartrobber_compare3
item modify entity @s weapon.mainhand {function:set_count,add:true,count:-1}
function heartrobber:macro/reinforcement_components with storage heartrobber:xptemp
function heartrobber:macro/set_xp_lore with storage heartrobber:xptemp
playsound heartrobber:item.wise_reinforcement.use neutral @a
advancement revoke @s only heartrobber:using_wise_reinforcement