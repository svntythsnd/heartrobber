execute unless data storage heartrobber:mail queue[0] run return 0
execute if function heartrobber:triggered/mail/bridge/send_specific if function heartrobber:triggered/mail/remove_from_queue run return run function heartrobber:triggered/mail/continue_with_queue
data modify storage heartrobber:mail envelopes prepend from storage heartrobber:mail queue