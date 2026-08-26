execute unless function heartrobber:triggered/dispenser/dispensed_and_shelf run return 0
execute unless function heartrobber:triggered/dispenser/has_endpoint_relative run return 0
execute unless data entity @s Item.components."minecraft:custom_name" run return 0
execute unless function heartrobber:triggered/dispenser/validate_envelope run return 0
data merge storage heartrobber:mail {tempitem:{id:"minecraft:air",count:1,components:{}}}
execute align xyz positioned ~ ~1 ~ run data modify storage heartrobber:mail tempitem.sender set from entity @n[type=interaction,tag=heartrobber_endpoint] CustomName
data modify storage heartrobber:mail tempitem.recipient set from entity @s Item.components."minecraft:custom_name"
function heartrobber:triggered/dispenser/search_shelf_items
function heartrobber:triggered/dispenser/set_envelope_components with storage heartrobber:mail tempitem