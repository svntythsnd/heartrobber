data modify storage heartrobber:mail queue set value []
$data modify storage heartrobber:mail queue append from storage heartrobber:mail envelopes[{due:$(day)}]
$data remove storage heartrobber:mail envelopes[{due:$(day)}]
function heartrobber:triggered/mail/return with storage heartrobber:mail queue[0]
data modify storage heartrobber:mail envelopes append from storage heartrobber:mail queue[]