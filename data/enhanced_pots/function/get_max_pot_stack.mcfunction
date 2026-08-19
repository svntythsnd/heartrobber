scoreboard players operation @s heartrobber_compare4 = @s heartrobber_compare
scoreboard players set @s heartrobber_compare2 3
scoreboard players operation @s heartrobber_compare4 *= @s heartrobber_compare2
scoreboard players operation @s heartrobber_compare3 = @s heartrobber_compare4
scoreboard players set @s heartrobber_compare2 2
scoreboard players operation @s heartrobber_compare4 /= @s heartrobber_compare2
scoreboard players operation @s heartrobber_compare3 %= @s heartrobber_compare2
scoreboard players add @s[scores={heartrobber_compare3=1..}] heartrobber_compare4 1
execute store result storage enhanced_pots:broken_pot_data max_stack_size int 1 run scoreboard players get @s heartrobber_compare4