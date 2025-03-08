execute store result score @s heartrobber_compare4 run time query day
scoreboard players set @s heartrobber_compare 24000
scoreboard players operation @s heartrobber_compare4 *= @s heartrobber_compare
execute store result score @s heartrobber_compare run time query daytime
scoreboard players operation @s heartrobber_compare4 += @s heartrobber_compare
scoreboard players add @s heartrobber_compare4 6000

scoreboard players set @s heartrobber_compare2 1
scoreboard players operation @s heartrobber_compare = @s heartrobber_compare4
scoreboard players set @s heartrobber_compare3 20
scoreboard players operation @s heartrobber_compare %= @s heartrobber_compare3
scoreboard players add @s heartrobber_compare 100
execute store result storage heartrobber:clock ticks int 1 run scoreboard players get @s heartrobber_compare
data modify storage heartrobber:clock ticks set string storage heartrobber:clock ticks 1


scoreboard players operation @s heartrobber_compare = @s heartrobber_compare4
scoreboard players operation @s heartrobber_compare2 *= @s heartrobber_compare3
scoreboard players operation @s heartrobber_compare /= @s heartrobber_compare2
scoreboard players set @s heartrobber_compare3 60
scoreboard players operation @s heartrobber_compare %= @s heartrobber_compare3
scoreboard players add @s heartrobber_compare 100
execute store result storage heartrobber:clock minutes int 1 run scoreboard players get @s heartrobber_compare
data modify storage heartrobber:clock minutes set string storage heartrobber:clock minutes 1


scoreboard players operation @s heartrobber_compare = @s heartrobber_compare4
scoreboard players operation @s heartrobber_compare2 *= @s heartrobber_compare3
scoreboard players operation @s heartrobber_compare /= @s heartrobber_compare2
scoreboard players set @s heartrobber_compare3 20
scoreboard players operation @s heartrobber_compare %= @s heartrobber_compare3
scoreboard players add @s heartrobber_compare 100
execute store result storage heartrobber:clock hours int 1 run scoreboard players get @s heartrobber_compare
data modify storage heartrobber:clock hours set string storage heartrobber:clock hours 1

scoreboard players operation @s heartrobber_compare = @s heartrobber_compare4
scoreboard players operation @s heartrobber_compare2 *= @s heartrobber_compare3
scoreboard players operation @s heartrobber_compare /= @s heartrobber_compare2
execute store result storage heartrobber:clock day int 1 run scoreboard players get @s heartrobber_compare

function heartrobber:macro/clock with storage heartrobber:clock