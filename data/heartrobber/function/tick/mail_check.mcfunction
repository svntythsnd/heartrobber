function heartrobber:triggered/mail/daily
execute as @e[type=marker,tag=heartrobber_endpointPlace] at @s run function heartrobber:triggered/mail/endpoint/place
execute as @e[type=interaction,tag=heartrobber_endpoint] at @s run function heartrobber:triggered/mail/endpoint/tick
execute as @a unless score @s heartrobber_left matches 0 at @s run function heartrobber:triggered/mail/check_join
scoreboard players remove @a[scores={heartrobber_mail_seal_cooldown=1..}] heartrobber_mail_seal_cooldown 1