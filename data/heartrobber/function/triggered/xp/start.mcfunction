execute store result score @s heartrobber_compare run xp query @s levels
execute store result score @s heartrobber_compare2 run xp query @s points
scoreboard players operation @s heartrobber_compare += @s heartrobber_compare2
advancement revoke @s only heartrobber:using_xp_crystal
execute if items entity @s weapon.mainhand *[custom_data~{"heartrobber:type":9b}] at @s run return run function heartrobber:triggered/xp/release
execute if items entity @s[scores={heartrobber_compare=1..}] weapon.offhand *[custom_data~{"heartrobber:type":9b}] run function heartrobber:triggered/xp/store