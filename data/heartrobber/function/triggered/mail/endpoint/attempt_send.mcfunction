$execute store success score @s heartrobber_compare run forceload add $(x) $(z)
$execute positioned $(x) $(y) $(z) store result score @s heartrobber_compare2 run function heartrobber:mail/endpoint/iterate_slots
$execute if score @s heartrobber_compare matches 1 run forceload remove $(x) $(z)
return run scoreboard players get @s heartrobber_compare2