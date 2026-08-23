particle minecraft:falling_honey ~ ~1.2 ~ 0.1 0.05 0.1 1 3 normal
execute if score @s enhanced_pots.coagulating_time matches 30.. run playsound enhanced_pots:block.decorated_pot.coagulating block @a
execute store result score @s enhanced_pots.coagulation_sound run random value 24..96