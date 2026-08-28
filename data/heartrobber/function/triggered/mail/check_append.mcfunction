data modify storage heartrobber:mail queue set value []
$data modify storage heartrobber:mail queue append from storage heartrobber:mail envelopes[{due:$(day)}]
$data remove storage heartrobber:mail envelopes[{due:$(day)}]
data modify storage heartrobber:mail queue[0].components."minecraft:custom_data"."heartrobber:returned" set from storage heartrobber:mail queue[0].recipient
function heartrobber:triggered/mail/return with storage heartrobber:mail queue[0]