scoreboard players set @s heartrobber_compare 0
$execute if items entity @s enderchest.$(slot) * run scoreboard players set @s heartrobber_compare 1
execute if score @s heartrobber_compare matches 0 run function heartrobber:triggered/mail/send_finish with storage heartrobber:mail temp
execute if score @s heartrobber_compare matches 1 run function heartrobber:triggered/mail/slot_move_on with storage heartrobber:mail temp