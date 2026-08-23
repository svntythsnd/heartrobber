data modify storage heartrobber:temp throwables.thrown_item set from entity @s Item.components."minecraft:custom_data"."heartrobber:thrown_item"
data modify storage heartrobber:temp throwables.motion set from entity @s Motion
execute store result storage heartrobber:temp throwables.motion[0] double 0.0000008 run data get storage heartrobber:temp throwables.motion[0] 500000
execute store result storage heartrobber:temp throwables.motion[1] double 0.0000016 run data get storage heartrobber:temp throwables.motion[1] 500000
execute store result storage heartrobber:temp throwables.motion[2] double 0.0000008 run data get storage heartrobber:temp throwables.motion[2] 500000
data modify storage heartrobber:temp throwables.on_throw set value "heartrobber:none"
data modify storage heartrobber:temp throwables.on_throw set from entity @s Item.components."minecraft:custom_data"."heartrobber:on_throw"

data modify storage heartrobber:temp throwables.name set string entity @s Item.id 10

data modify storage heartrobber:temp throwables.use_remainder set value {}
execute store success score @s heartrobber_compare run data modify storage heartrobber:temp throwables.use_remainder.id set string entity @s Item.components."minecraft:use_remainder"
data modify storage heartrobber:temp throwables.use_remainder set from entity @s[scores={heartrobber_compare=0}] Item.components."minecraft:use_remainder"

function heartrobber:macro/throwables with storage heartrobber:temp throwables
kill @s