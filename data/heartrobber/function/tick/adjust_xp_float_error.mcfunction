execute store result score @s heartrobber_compare run data get entity @s XpP 1000
execute if score @s heartrobber_compare matches 72..143 run xp set @s 1 points
execute if score @s heartrobber_compare matches ..71 run xp set @s 0 points