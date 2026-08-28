execute unless block ~ ~ ~ #replaceable run return 0
execute unless function heartrobber:triggered/dispenser/dispensed_direction run return 0
execute as @s[scores={heartrobber_compare=1}] run setblock ~ ~ ~ decorated_pot[facing=east]
execute as @s[scores={heartrobber_compare=2}] run setblock ~ ~ ~ decorated_pot[facing=south]
execute as @s[scores={heartrobber_compare=3}] run setblock ~ ~ ~ decorated_pot[facing=west]
execute as @s[scores={heartrobber_compare=4}] run setblock ~ ~ ~ decorated_pot[facing=north]
execute as @s[scores={heartrobber_compare=5..6}] run setblock ~ ~ ~ decorated_pot[facing=east]
data modify block ~ ~ ~ item set from entity @s Item.components."minecraft:container"[0].item
data modify block ~ ~ ~ sherds set from entity @s Item.components."minecraft:pot_decorations"
execute positioned ~ ~-0.5 ~ run function enhanced_pots:setup_pot_dispensed
playsound block.decorated_pot.break block @a
kill @s