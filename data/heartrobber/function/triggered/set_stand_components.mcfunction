data modify storage heartrobber:temp stand.fuel set value 0
data modify storage heartrobber:temp stand.fuel set from entity @s Item.components."minecraft:custom_data"."heartrobber:stand_fuel"
data modify storage heartrobber:temp stand.total_fuel set value 20
data modify storage heartrobber:temp stand.total_fuel set from entity @s Item.components."minecraft:custom_data"."heartrobber:max_stand_fuel"
data modify storage heartrobber:temp stand.source set value "entity @s Item.components"
function heartrobber:macro/set_stand_components with storage heartrobber:temp stand