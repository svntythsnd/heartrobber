data modify storage heartrobber:mail queue append from storage heartrobber:mail queue[0]
data remove storage heartrobber:mail queue[0]
execute if data storage heartrobber:mail queue[0] run function heartrobber:triggered/mail/return with storage heartrobber:mail queue[0]