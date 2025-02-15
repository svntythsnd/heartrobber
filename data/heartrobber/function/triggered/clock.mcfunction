execute store result storage heartrobber:clock day int 1 run time query day

scoreboard players set @s heartrobber_compare2 1
execute store result score @s heartrobber_compare run time query gametime
scoreboard players set @s heartrobber_compare3 20
scoreboard players operation @s heartrobber_compare %= @s heartrobber_compare3
scoreboard players add @s heartrobber_compare 100
execute store result storage heartrobber:clock ticks int 1 run scoreboard players get @s heartrobber_compare
data modify storage heartrobber:clock ticks set string storage heartrobber:clock ticks 1

execute store result score @s heartrobber_compare run time query gametime
scoreboard players operation @s heartrobber_compare2 *= @s heartrobber_compare3
scoreboard players operation @s heartrobber_compare /= @s heartrobber_compare2
scoreboard players operation @s heartrobber_compare %= @s heartrobber_compare3
scoreboard players add @s heartrobber_compare 100
execute store result storage heartrobber:clock minutes int 1 run scoreboard players get @s heartrobber_compare
data modify storage heartrobber:clock minutes set string storage heartrobber:clock minutes 1

execute store result score @s heartrobber_compare run time query gametime
scoreboard players operation @s heartrobber_compare2 *= @s heartrobber_compare3
scoreboard players operation @s heartrobber_compare /= @s heartrobber_compare2
scoreboard players add @s heartrobber_compare 6
scoreboard players set @s heartrobber_compare3 24
scoreboard players operation @s heartrobber_compare %= @s heartrobber_compare3
scoreboard players add @s heartrobber_compare 100
execute store result storage heartrobber:clock hours int 1 run scoreboard players get @s heartrobber_compare
data modify storage heartrobber:clock hours set string storage heartrobber:clock hours 1

execute store result score @s heartrobber_compare run time query gametime
scoreboard players operation @s heartrobber_compare /= @s heartrobber_compare2
scoreboard players add @s heartrobber_compare 6
scoreboard players operation @s heartrobber_compare /= @s heartrobber_compare3
execute store result storage heartrobber:clock days int 1 run scoreboard players get @s heartrobber_compare

function heartrobber:macro/clock with storage heartrobber:clock