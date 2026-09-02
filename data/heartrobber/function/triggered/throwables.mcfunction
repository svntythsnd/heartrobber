data modify storage heartrobber:temp throwables.thrown_item set from entity @s Item.components."minecraft:custom_data"."heartrobber:thrown_item"

data modify storage heartrobber:temp throwables.motion set value []

data modify storage heartrobber:math inputs set value [0.4f]
data modify storage heartrobber:math inputs append from entity @s Motion[0]
function heartrobber:math/mul
data modify storage heartrobber:temp throwables.motion append from storage heartrobber:math result

data modify storage heartrobber:math inputs set value [0.8f]
data modify storage heartrobber:math inputs append from entity @s Motion[1]
function heartrobber:math/mul
data modify storage heartrobber:temp throwables.motion append from storage heartrobber:math result

data modify storage heartrobber:math inputs set value [0.4f]
data modify storage heartrobber:math inputs append from entity @s Motion[2]
function heartrobber:math/mul
data modify storage heartrobber:temp throwables.motion append from storage heartrobber:math result

data modify storage heartrobber:temp throwables.on_throw set value "heartrobber:none"
data modify storage heartrobber:temp throwables.on_throw set from entity @s Item.components."minecraft:custom_data"."heartrobber:on_throw"

data modify storage heartrobber:temp throwables.name set string entity @s Item.id 10

data modify storage heartrobber:temp throwables.use_remainder set value {}
execute store success score @s heartrobber_compare run data modify storage heartrobber:temp throwables.use_remainder.id set string entity @s Item.components."minecraft:use_remainder"
data modify storage heartrobber:temp throwables.use_remainder set from entity @s[scores={heartrobber_compare=0}] Item.components."minecraft:use_remainder"

function heartrobber:macro/throwables with storage heartrobber:temp throwables
kill