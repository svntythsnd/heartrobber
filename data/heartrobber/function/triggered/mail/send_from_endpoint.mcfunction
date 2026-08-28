data modify storage heartrobber:mail envelopes prepend from storage heartrobber:mail temp
$advancement grant @p[name="$(recipient)"] only heartrobber:metallurgy/receive_from_endpoint
$execute as @p[name="$(recipient)"] run return run function heartrobber:triggered/mail/send_specific with storage heartrobber:mail temp
data modify storage heartrobber:mail temp.leading_rec_char set string storage heartrobber:mail temp.recipient 0 1
execute unless data storage heartrobber:mail temp{leading_rec_char:"$"} run return 0
data modify storage heartrobber:mail temp.truncated_recipient set string storage heartrobber:mail temp.recipient 1
return run function heartrobber:triggered/mail/send_to_endpoint with storage heartrobber:mail temp