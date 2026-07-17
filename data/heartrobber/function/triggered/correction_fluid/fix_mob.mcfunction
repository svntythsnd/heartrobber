scoreboard players set @s heartrobber_compare 40
execute if data entity @n[tag=heartrobber_correctionHit] CustomName run function heartrobber:triggered/correction_fluid/fix_mob_finalize
tag @e remove heartrobber_correctionHit