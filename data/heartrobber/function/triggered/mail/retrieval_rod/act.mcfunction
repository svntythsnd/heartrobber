execute if data entity @s equipment.offhand.components."minecraft:custom_data"{"heartrobber:sent":0b} run function heartrobber:triggered/mail/retrieval_rod/reopen
execute unless items entity @s weapon.offhand * run function heartrobber:triggered/mail/retrieval_rod/retrieve
advancement revoke @s only heartrobber:using_retrieval_rod