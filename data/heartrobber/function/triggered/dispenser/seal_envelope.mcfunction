execute unless function heartrobber:triggered/dispenser/dispensed_and_shelf run return 0
execute unless function heartrobber:triggered/dispenser/has_endpoint_relative run return 0
execute unless data entity @s Item.components."minecraft:custom_name" run return 0
execute unless function heartrobber:triggered/dispenser/validate_envelope run return 0
data modify storage heartrobber:mail tempitem set value {id:"minecraft:air",count:1,components:{}}
execute align xyz positioned ~ ~1 ~ run data modify storage heartrobber:mail tempitem.sender set from entity @n[type=interaction,tag=heartrobber_endpoint] CustomName
data modify storage heartrobber:mail tempitem.recipient set from entity @s Item.components."minecraft:custom_name"

data modify storage heartrobber:math inputs set value [-0.5f]
data modify storage heartrobber:math inputs append from entity @s Motion[0]
function heartrobber:math/mul
data modify entity @s Motion[0] set from storage heartrobber:math result

data modify storage heartrobber:math inputs[1] set from entity @s Motion[2]
function heartrobber:math/mul
data modify entity @s Motion[2] set from storage heartrobber:math result

function heartrobber:triggered/dispenser/search_shelf_items
playsound heartrobber:item.envelope.close block @a
function heartrobber:triggered/dispenser/set_envelope_components with storage heartrobber:mail tempitem