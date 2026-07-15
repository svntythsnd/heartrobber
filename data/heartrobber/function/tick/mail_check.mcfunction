execute store result score _ heartrobber_compare run time query day
execute if score _ heartrobber_compare matches 18000 run function heartrobber:triggered/mail/daily
execute as @a unless score @s heartrobber_left matches 0 at @s run function heartrobber:triggered/mail/check_join
scoreboard players remove @a[scores={heartrobber_mail_seal_cooldown=1..}] heartrobber_mail_seal_cooldown 1