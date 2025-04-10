tag @s remove heartrobber_respawnitemcheck
playsound heartrobber:item.heart.link block @a
function heartrobber:macro/reviver_advancement with entity @s
tag @s add heartrobber_respawnitem
tag @s remove heartrobber_respawnitem1