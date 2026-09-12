$execute if items block ~ ~ ~ container.$(Slot) * run return 0
$item replace block ~ ~ ~ container.$(Slot) with $(id) $(count)
$item modify block ~ ~ ~ container.$(Slot) {type:set_components,components:$(components)}
return 1