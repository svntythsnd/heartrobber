scoreboard players remove @s heartrobber_mail_slot 1
execute store result storage heartrobber:mail temp.slot int 1 run scoreboard players get @s heartrobber_mail_slot
execute if score @s heartrobber_mail_slot matches 0.. run function heartrobber:triggered/mail/send_slot with storage heartrobber:mail temp
execute if score @s heartrobber_mail_slot matches ..-1 run data modify storage heartrobber:mail envelopes append from storage heartrobber:mail queue[0]
execute if score @s heartrobber_mail_slot matches ..-1 run data remove storage heartrobber:mail queue[0]