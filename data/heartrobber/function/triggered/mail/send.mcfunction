data modify storage heartrobber:mail temp.leading_char set string storage heartrobber:mail temp.sender 0 1
execute if data storage heartrobber:mail {temp:{leading_char:"$"}} run return run function heartrobber:triggered/mail/send_endpoint with storage heartrobber:mail temp
function heartrobber:triggered/mail/send_player with storage heartrobber:mail temp
