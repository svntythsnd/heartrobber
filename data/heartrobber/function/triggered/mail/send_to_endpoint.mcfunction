$execute unless data storage heartrobber:mail endpoints."$(truncated_recipient)"{open:true} run return 0
$data modify storage heartrobber:mail temp.x set from storage heartrobber:mail endpoints."$(truncated_recipient)".x
$data modify storage heartrobber:mail temp.y set from storage heartrobber:mail endpoints."$(truncated_recipient)".y
$data modify storage heartrobber:mail temp.z set from storage heartrobber:mail endpoints."$(truncated_recipient)".z
return run function heartrobber:triggered/mail/endpoint/attempt_send with storage heartrobber:mail temp