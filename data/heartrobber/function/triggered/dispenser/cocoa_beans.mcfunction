execute unless block ~ ~ ~ #replaceable run return 0
execute unless function heartrobber:triggered/dispenser/dispensed_and_jungle_log run return 0
execute as @s[scores={heartrobber_compare=1}] run setblock ~ ~ ~ cocoa[facing=east]
execute as @s[scores={heartrobber_compare=2}] run setblock ~ ~ ~ cocoa[facing=south]
execute as @s[scores={heartrobber_compare=3}] run setblock ~ ~ ~ cocoa[facing=west]
execute as @s[scores={heartrobber_compare=4}] run setblock ~ ~ ~ cocoa[facing=north]
kill @s
playsound block.wood.place block @a