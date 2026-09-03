$execute unless block ~ ~ ~ #heartrobber:closes_endpoint unless function heartrobber:triggered/mail/endpoint/moving_grate run return run data modify storage heartrobber:mail endpoints."$(endpoint_id)".open set value true
$data modify storage heartrobber:mail endpoints."$(endpoint_id)".open set value false
advancement grant @a[distance=..5] only heartrobber:metallurgy/close_endpoint