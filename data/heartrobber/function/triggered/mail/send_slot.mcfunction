$execute if items entity @s enderchest.$(slot) * run return run function heartrobber:triggered/mail/slot_move_on with storage heartrobber:mail temp
$item replace entity @s enderchest.$(slot) with minecraft:clock
$item modify entity @s enderchest.$(slot) {type:set_components,components:$(components)}
return 1