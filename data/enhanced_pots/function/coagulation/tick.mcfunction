execute if score @s enhanced_pots.coagulation_sound matches 0 run function enhanced_pots:coagulation/sound
scoreboard players remove @s enhanced_pots.coagulation_sound 1
scoreboard players remove @s[scores={enhanced_pots.coagulating_time=1..}] enhanced_pots.coagulating_time 1