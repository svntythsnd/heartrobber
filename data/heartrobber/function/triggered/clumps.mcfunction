execute store result score @s heartrobber_compare2 on vehicle run data get entity @s Count
execute if score @s heartrobber_compare2 matches 10.. run ride @s dismount
execute on vehicle on passengers store result score @s heartrobber_compare2 on vehicle run data get entity @s Value
execute on vehicle on passengers if score @s heartrobber_compare1 matches 307.. run ride @s dismount
execute on vehicle on passengers run function heartrobber:triggered/clumps_verified