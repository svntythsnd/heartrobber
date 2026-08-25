# x
execute store result score @s heartrobber_compare run data get entity @s Motion[0] 1000
# y
execute store result score @s heartrobber_compare2 run data get entity @s Motion[1] 1000
# z
execute store result score @s heartrobber_compare3 run data get entity @s Motion[2] 1000

# 1/2 y² - x² - z² > 0 means horizon angle > arctan √2 ~ 55°

scoreboard players operation @s heartrobber_compare4 = @s heartrobber_compare2
scoreboard players operation @s heartrobber_compare4 *= @s heartrobber_compare2
scoreboard players set @s heartrobber_compare2 2
scoreboard players operation @s heartrobber_compare4 /= @s heartrobber_compare2

scoreboard players operation @s heartrobber_compare2 = @s heartrobber_compare
scoreboard players operation @s heartrobber_compare2 *= @s heartrobber_compare
scoreboard players operation @s heartrobber_compare4 -= @s heartrobber_compare2

scoreboard players operation @s heartrobber_compare2 = @s heartrobber_compare3
scoreboard players operation @s heartrobber_compare2 *= @s heartrobber_compare3
scoreboard players operation @s heartrobber_compare4 -= @s heartrobber_compare2

# up: 5, down: 6
execute as @s[scores={heartrobber_compare4=1..}] run return run function heartrobber:get_y_direction

# -x
execute store result score @s heartrobber_compare4 run data get entity @s Motion[0] -1000

# +X quadrant: 1
execute if score @s heartrobber_compare >= @s heartrobber_compare3 if score @s heartrobber_compare4 < @s heartrobber_compare3 run return 1
# +Z quadrant: 2
execute if score @s heartrobber_compare4 <= @s heartrobber_compare3 if score @s heartrobber_compare < @s heartrobber_compare3 run return 2
# -X quadrant: 3
execute if score @s heartrobber_compare <= @s heartrobber_compare3 if score @s heartrobber_compare4 > @s heartrobber_compare3 run return 3
# -Z quadrant: 4
execute if score @s heartrobber_compare4 >= @s heartrobber_compare3 if score @s heartrobber_compare > @s heartrobber_compare3 run return 4
# 0 means no movement
return 0