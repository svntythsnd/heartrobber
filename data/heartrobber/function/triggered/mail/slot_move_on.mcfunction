execute if score @s heartrobber_mail_slot matches ..0 run return 0
scoreboard players remove @s heartrobber_mail_slot 1
execute store result storage heartrobber:mail temp.slot int 1 run scoreboard players get @s heartrobber_mail_slot
return run function heartrobber:triggered/mail/send_slot with storage heartrobber:mail temp