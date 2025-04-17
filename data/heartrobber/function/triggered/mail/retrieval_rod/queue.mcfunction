playsound heartrobber:item.retrieval_rod.retrieve neutral @a
advancement grant @s only heartrobber:metallurgy/retrieve
data modify storage heartrobber:mail queue set value []
$data modify storage heartrobber:mail queue append from storage heartrobber:mail envelopes[{sender:"$(sender)"}]
$data remove storage heartrobber:mail envelopes[{sender:"$(sender)"}]
$data modify storage heartrobber:mail queue[0].components."minecraft:custom_data"."heartrobber:returned" set value "$(recipient)"
function heartrobber:triggered/mail/retrieval_rod/return with storage heartrobber:mail queue[0]