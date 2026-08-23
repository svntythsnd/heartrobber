tag @e[type=item,tag=heartrobber_respawnitem] add heartrobber_respawnitem_keep
tag @e[type=item] remove heartrobber_respawnitem
execute as @e[type=item] at @s if predicate heartrobber:revive_beacon run tag @s add heartrobber_respawnitem
execute as @e[type=item,tag=heartrobber_respawnitem,tag=!heartrobber_respawnitem_keep] at @s run function heartrobber:triggered/revive_check/start
execute as @e[type=item,tag=heartrobber_respawnitem] at @s run function heartrobber:triggered/revive_check/item