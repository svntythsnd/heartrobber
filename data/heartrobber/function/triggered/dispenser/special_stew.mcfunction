data modify entity @s Item.components."minecraft:suspicious_stew_effects" set from entity @n[type=mooshroom] stew_effects
data modify entity @s Item.id set value "minecraft:suspicious_stew"
execute at @n[type=mooshroom] run playsound entity.mooshroom.suspicious_milk block @a
data remove entity @n[type=mooshroom] stew_effects
return 1