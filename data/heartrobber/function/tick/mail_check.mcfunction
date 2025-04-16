scoreboard players reset @a[scores={heartrobber_left=2..}] heartrobber_wait
scoreboard players reset @a[scores={heartrobber_left=2..}] heartrobber_left
scoreboard players add @a[scores={heartrobber_left=1..}] heartrobber_mail_cooldown 1
execute as @a[scores={heartrobber_left=1..,heartrobber_mail_cooldown=20..}] run function heartrobber:triggered/mail/joined