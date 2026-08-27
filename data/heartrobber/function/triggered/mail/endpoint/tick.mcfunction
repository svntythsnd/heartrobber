execute unless block ~ ~ ~ air unless block ~ ~ ~ moving_piston unless block ~ ~ ~ #heartrobber:closes_endpoint run return run function heartrobber:triggered/mail/endpoint/destroy with entity @s data
execute unless block ~ ~-1 ~ dispenser run return run function heartrobber:triggered/mail/endpoint/destroy with entity @s data
execute if block ~ ~-1 ~ dispenser[facing=up] run return run function heartrobber:triggered/mail/endpoint/destroy with entity @s data
execute if data entity @s attack run return run function heartrobber:triggered/mail/endpoint/destroy with entity @s data
function heartrobber:triggered/mail/endpoint/update_status with entity @s data