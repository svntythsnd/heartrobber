data modify entity @s Fixed set value 1b
execute store result score @s heartrobber_compare run data get entity @s ItemRotation
scoreboard players remove @s heartrobber_compare 1
scoreboard players set @s heartrobber_compare2 8
scoreboard players operation @s heartrobber_compare %= @s heartrobber_compare2
execute store result entity @s ItemRotation byte 1 run scoreboard players get @s heartrobber_compare
playsound heartrobber:item.lock.lock neutral @a