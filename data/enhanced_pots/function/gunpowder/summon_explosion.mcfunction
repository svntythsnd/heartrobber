execute store result score @s heartrobber_compare2 run gamerule mobGriefing
execute store result score @s heartrobber_compare3 run difficulty
execute as @s[scores={heartrobber_compare2=0}] run gamerule mobGriefing true
execute as @s[scores={heartrobber_compare3=0}] run difficulty easy
setblock ~ ~ ~ minecraft:air
$summon minecraft:creeper ~ ~ ~ {ExplosionRadius: $(radius), Fuse: 0}
execute as @s[scores={heartrobber_compare2=0}] run schedule function enhanced_pots:gunpowder/reset_gamerule 2t
execute as @s[scores={heartrobber_compare3=0}] run schedule function enhanced_pots:gunpowder/reset_difficulty 2t