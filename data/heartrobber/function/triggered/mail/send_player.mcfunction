data remove storage heartrobber:mail temp.leading_char
data remove storage heartrobber:mail temp.leading_rec_char
data remove storage heartrobber:mail temp.truncated_recipient
data remove storage heartrobber:mail temp.slot
data remove storage heartrobber:mail temp.x
data remove storage heartrobber:mail temp.y
data remove storage heartrobber:mail temp.z
data remove storage heartrobber:mail temp.id
data modify storage heartrobber:mail envelopes prepend from storage heartrobber:mail temp
$execute as @p[name="$(recipient)"] run return run function heartrobber:triggered/mail/send_append {recipient:"$(recipient)"}
data modify storage heartrobber:mail temp.leading_rec_char set string storage heartrobber:mail temp.recipient 0 1
execute unless data storage heartrobber:mail temp{leading_rec_char:"$"} run return 0
data modify storage heartrobber:mail temp.truncated_recipient set string storage heartrobber:mail temp.recipient 1
execute if function heartrobber:triggered/mail/bridge/send_to_endpoint run data remove storage heartrobber:mail envelopes[0]