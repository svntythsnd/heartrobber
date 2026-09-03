data merge storage heartrobber:mail {temp:{id:"minecraft:clock"}}
$execute unless data storage heartrobber:mail endpoints."$(truncated_recipient)"{open:true,throttle:0b} run return 0
$data modify storage heartrobber:mail temp.x set from storage heartrobber:mail endpoints."$(truncated_recipient)".x
$data modify storage heartrobber:mail temp.y set from storage heartrobber:mail endpoints."$(truncated_recipient)".y
$data modify storage heartrobber:mail temp.z set from storage heartrobber:mail endpoints."$(truncated_recipient)".z
$data modify storage heartrobber:mail temp.dim set from storage heartrobber:mail endpoints."$(truncated_recipient)".dim
$execute if function heartrobber:triggered/mail/endpoint/bridge_attempt_send run return run data modify storage heartrobber:mail endpoints."$(truncated_recipient)".throttle set value 7b
return 0