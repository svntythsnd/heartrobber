execute as @e[type=item_frame,nbt={Invisible:1b}] at @s unless entity @n[type=marker,tag=heartrobber_glass_frame,distance=..0.01] run summon marker ~ ~ ~ {Tags:["heartrobber_glass_frame"]}
execute as @e[type=glow_item_frame,nbt={Invisible:1b}] at @s unless entity @n[type=marker,tag=heartrobber_glow_glass_frame,distance=..0.01] run summon marker ~ ~ ~ {Tags:["heartrobber_glow_glass_frame"]}

execute as @e[type=marker,tag=heartrobber_glass_frame] at @s run function heartrobber:triggered/glass_frames/normal
execute as @e[type=marker,tag=heartrobber_glow_glass_frame] at @s run function heartrobber:triggered/glass_frames/glow