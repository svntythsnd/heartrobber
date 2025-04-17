$data modify storage heartrobber:mail temp set value {components:$(components),recipient:"$(recipient)"}
scoreboard players set @s heartrobber_mail_slot 26
execute store result storage heartrobber:mail temp.slot int 1 run scoreboard players get @s heartrobber_mail_slot
function heartrobber:triggered/mail/send_slot with storage heartrobber:mail temp