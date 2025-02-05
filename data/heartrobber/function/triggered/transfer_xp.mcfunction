execute store result score @s heartrobber_compare run data get entity @s Score
execute as @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{"heartrobber:type":9b}}}}] at @s run function heartrobber:triggered/release_xp
execute as @s[nbt=!{SelectedItem:{components:{"minecraft:custom_data":{"heartrobber:type":9b}}}},scores={heartrobber_compare=1..}] if data entity @s Inventory[{Slot:-106b,components:{"minecraft:custom_data":{"heartrobber:type":9b}}}] run function heartrobber:triggered/store_xp
advancement revoke @s only heartrobber:using_xp_crystal