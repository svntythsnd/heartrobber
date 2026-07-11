item replace entity @s weapon.offhand with filled_map
$item modify entity @s weapon.offhand {function:set_components,components:$(components)}
data remove storage heartrobber:mail queue[0]
data modify storage heartrobber:mail envelopes append from storage heartrobber:mail queue[]