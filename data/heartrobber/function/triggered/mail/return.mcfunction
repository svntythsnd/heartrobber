$execute at @p[name=$(sender)] run summon item ~ ~ ~ {Item:{id:filled_map,components:$(components)}}
data remove storage heartrobber:mail queue[0]
execute if data storage heartrobber:mail queue[0] run function heartrobber:triggered/mail/return with storage heartrobber:mail queue[0]