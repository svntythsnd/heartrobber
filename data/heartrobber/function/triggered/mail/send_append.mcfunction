data modify storage heartrobber:mail queue set value []
$data modify storage heartrobber:mail queue append from storage heartrobber:mail envelopes[{recipient:"$(recipient)"}]
$data remove storage heartrobber:mail envelopes[{recipient:"$(recipient)"}]
function heartrobber:triggered/mail/continue_with_queue