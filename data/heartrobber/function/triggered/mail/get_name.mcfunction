summon armor_stand ~ ~ ~ {Tags:["heartrobber_temp_playerarmor"],Marker:1b,Invisible:1b}
loot replace entity @n[type=armor_stand,tag=heartrobber_temp_playerarmor] armor.head loot heartrobber:player_head
execute as @n[type=armor_stand,tag=heartrobber_temp_playerarmor] run data modify storage heartrobber:mail temp.recipient set from entity @s equipment.head.components."minecraft:profile".name
kill @n[type=armor_stand,tag=heartrobber_temp_playerarmor]
function heartrobber:triggered/mail/send with storage heartrobber:mail temp