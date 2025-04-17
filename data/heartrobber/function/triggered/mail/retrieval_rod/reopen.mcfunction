advancement grant @s only heartrobber:metallurgy/retrieve
data modify storage heartrobber:mail tempitem set from entity @s equipment.offhand.components."minecraft:custom_data"."heartrobber:envelope"
data modify storage heartrobber:mail tempitem.recipient set from entity @s equipment.offhand.components."minecraft:lore"[0].extra[1]
function heartrobber:triggered/mail/retrieval_rod/modify with storage heartrobber:mail tempitem