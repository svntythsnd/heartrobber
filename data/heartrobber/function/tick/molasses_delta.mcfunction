scoreboard players set @s[scores={heartrobber_molasses_deposited=1..}] heartrobber_molasses_deposited 0
execute store result score @s heartrobber_compare run data get entity @s Rotation[0] 1000
execute unless score @s heartrobber_compare = @s heartrobber_yaw_1000 run scoreboard players set @s heartrobber_molasses_deposited 0
scoreboard players operation @s heartrobber_yaw_1000 = @s heartrobber_compare
execute store result score @s heartrobber_compare if items entity @s container.* *[custom_data={"heartrobber:type":22b}]
execute store result score @s heartrobber_compare2 if items entity @s weapon.offhand *[custom_data={"heartrobber:type":22b}]
scoreboard players operation @s heartrobber_compare += @s heartrobber_compare2
scoreboard players operation @s heartrobber_compare2 = @s heartrobber_compare
scoreboard players operation @s heartrobber_compare2 -= @s heartrobber_molasses_count
scoreboard players operation @s heartrobber_molasses_count = @s heartrobber_compare
execute as @s[scores={heartrobber_compare2=..-1}] run scoreboard players operation @s heartrobber_molasses_deposited += @s heartrobber_compare2
execute store result score @s heartrobber_compare3 at @s anchored eyes positioned ^ ^ ^ run data get entity @n[type=item,nbt={Age:0s,Item:{components:{"minecraft:custom_data":{"heartrobber:type":22b}}}},distance=..0.5] Item.count
scoreboard players operation @s heartrobber_molasses_deposited += @s heartrobber_compare3
scoreboard players operation @s[scores={heartrobber_compare2=1..},advancements={heartrobber:picked_up_molasses=false}] heartrobber_molasses_deposited += @s heartrobber_compare2
advancement grant @s[scores={heartrobber_molasses_deposited=..-1},advancements={heartrobber:crafted_sugar_from_molasses=true}] only heartrobber:brewing/molasses_sugar
scoreboard players set @s[scores={heartrobber_molasses_deposited=..-1},advancements={heartrobber:crafted_sugar_from_molasses=true}] heartrobber_molasses_count -1
advancement revoke @s only heartrobber:crafted_sugar_from_molasses
advancement revoke @s only heartrobber:picked_up_molasses