$execute unless entity @p[name=$(sender)] if score $(sender) heartrobber_health matches 0.. run return run function heartrobber:triggered/mail/return_send_back
$execute if entity @p[name=$(sender)] unless score $(sender) heartrobber_health matches 1.. run return run function heartrobber:triggered/mail/return_send_back
$execute at @p[name=$(sender)] run summon item ~ ~ ~ {Item:{id:clock,components:$(components)}}
data remove storage heartrobber:mail queue[0]
execute if data storage heartrobber:mail queue[0] run function heartrobber:triggered/mail/return with storage heartrobber:mail queue[0]