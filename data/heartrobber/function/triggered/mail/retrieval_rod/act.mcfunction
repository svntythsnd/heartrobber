advancement revoke @s only heartrobber:using_retrieval_rod
execute unless items entity @s weapon.offhand * run return run function heartrobber:triggered/mail/retrieval_rod/retrieve
execute unless data entity @s equipment.offhand.components."minecraft:custom_data"{"heartrobber:type":19b,"heartrobber:sent":0b} run return 0
data modify storage heartrobber:mail tempitem.sender set from entity @s equipment.offhand.components."minecraft:lore"[0].text
data modify storage heartrobber:mail tempitem.UUID set from entity @s UUID
data modify storage heartrobber:mail tempitem.location set value "storage heartrobber:mail tempitem.me set"
function heartrobber:macro/recall_uuid_name with storage heartrobber:mail tempitem
execute store success score @s heartrobber_compare run data modify storage heartrobber:mail tempitem.sender set from storage heartrobber:mail tempitem.me
execute if score @s heartrobber_compare matches 0 run function heartrobber:triggered/mail/retrieval_rod/reopen