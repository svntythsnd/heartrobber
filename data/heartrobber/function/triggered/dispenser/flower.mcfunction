execute store result score @s heartrobber_compare run data get entity @n[type=mooshroom,nbt={Type:brown}] Age
execute as @s[scores={heartrobber_compare=..-1}] run return 0
execute if data entity @n[type=mooshroom,nbt={Type:brown}] stew_effects run return 0
execute store result score @s heartrobber_compare run function heartrobber:triggered/dispenser/dispensed_direction
execute as @s[scores={heartrobber_compare=0}] run return 0
execute unless function heartrobber:triggered/dispenser/flower_dispatch run return 0
execute at @n[type=mooshroom,nbt={Type:brown}] run playsound entity.mooshroom.eat block @a
kill