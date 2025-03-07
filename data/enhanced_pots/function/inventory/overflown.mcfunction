scoreboard players remove @s heartrobber_compare 1
execute store result entity @s data.count int 1 run scoreboard players get @s heartrobber_compare
function enhanced_pots:summon_pot_overflow with entity @s data