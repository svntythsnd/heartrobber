$item replace entity @s enderchest.$(slot) with minecraft:trial_key
$item modify entity @s enderchest.$(slot) {function:set_components,components:$(components)}
data remove storage heartrobber:mail queue[0]
execute if data storage heartrobber:mail queue[0] run function heartrobber:triggered/mail/send_specific with storage heartrobber:mail queue[0]