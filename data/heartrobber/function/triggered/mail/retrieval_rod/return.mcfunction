item replace entity @s weapon.offhand with clock
$item modify entity @s weapon.offhand {type:set_components,components:$(components)}
data remove storage heartrobber:mail queue[0]
data modify storage heartrobber:mail envelopes append from storage heartrobber:mail queue[]