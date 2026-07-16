execute store result score _ heartrobber_compare run time query day
execute store result score _ heartrobber_compare2 run time query day repetition
execute if score _ heartrobber_compare matches 18000.. run scoreboard players add _ heartrobber_compare2 1
execute store result storage heartrobber:mail day int 1 run scoreboard players get _ heartrobber_compare2
function heartrobber:triggered/mail/check_append with storage heartrobber:mail