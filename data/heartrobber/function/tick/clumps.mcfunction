execute store result score @s heartrobber_compare run data get entity @s Value
execute store result score @s heartrobber_compare2 run data get entity @s Age
execute store result score @s heartrobber_compare3 run data get entity @s Count

execute at @s[scores={heartrobber_compare=..20,heartrobber_compare2=10..,heartrobber_compare3=..10}] run ride @s mount @e[type=experience_orb,distance=0.002..2,limit=1,sort=random]
execute on vehicle run execute on passengers run function heartrobber:triggered/clumps