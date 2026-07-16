$execute at @p[name=$(sender)] run summon item ~ ~ ~ {Item:{id:clock,components:$(components)}}
$execute unless entity @p[name=$(sender)] if score $(sender) heartrobber_health matches 0.. run data modify storage heartrobber:mail queue append from storage heartrobber:mail queue[0]
data remove storage heartrobber:mail queue[0]
execute if data storage heartrobber:mail queue[0] run function heartrobber:triggered/mail/return with storage heartrobber:mail queue[0]