setblock ~ ~ ~ air
summon item ~ ~0.1 ~ {Item:{id:"minecraft:decorated_pot",components:{"minecraft:custom_data":{"enhanced_pots:takes":true}}},Motion:[0.0,0.2,0.0]}
playsound block.decorated_pot.break block @a
function enhanced_pots:break_pot {Age:0} 