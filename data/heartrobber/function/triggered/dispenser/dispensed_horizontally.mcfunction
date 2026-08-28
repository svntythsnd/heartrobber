execute store result score @s heartrobber_compare run function heartrobber:triggered/dispenser/get_major_direction
execute as @s[scores={heartrobber_compare=5..6}] run return 0
execute if function heartrobber:dispensed_direction run return 1