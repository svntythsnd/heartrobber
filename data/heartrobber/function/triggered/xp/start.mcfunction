execute store result score @s heartrobber_compare run xp query @s levels
execute store result score @s heartrobber_compare2 run xp query @s points
scoreboard players operation @s heartrobber_compare += @s heartrobber_compare2
execute as @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{"heartrobber:type":9b}}}}] at @s run function heartrobber:triggered/xp/release
execute as @s[nbt=!{SelectedItem:{components:{"minecraft:custom_data":{"heartrobber:type":9b}}}},scores={heartrobber_compare=1..}] if data entity @s Inventory[{Slot:-106b,components:{"minecraft:custom_data":{"heartrobber:type":9b}}}] run function heartrobber:triggered/xp/store
advancement revoke @s only heartrobber:using_xp_crystal