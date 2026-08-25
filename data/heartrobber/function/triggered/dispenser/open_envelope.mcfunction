execute unless function heartrobber:triggered/dispenser/dispensed_direction run return 0
# heartrobber_compare 1-6 used in dispensed_direction transfers to backtrack_into_dispenser
data modify storage heartrobber:mail temp set value {id:clock,components:{item_model:"heartrobber:empty_envelope",item_name:{translate:"item.heartrobber.empty_envelope",fallback:"item.heartrobber.empty_envelope"},custom_data:{"heartrobber:type":18b},consumable:{consume_seconds: 3.40282347e+38}}}
execute unless data entity @s Item.components."minecraft:custom_data"."heartrobber:returned" run data modify storage heartrobber:mail temp.sender set from entity @s Item.components."minecraft:lore"[0]."text"
execute if data entity @s Item.components."minecraft:custom_data"."heartrobber:returned" run data modify storage heartrobber:mail temp.sender set from entity @s Item.components."minecraft:custom_data"."heartrobber:returned"
data modify entity @s Item set from entity @s Item.components."minecraft:custom_data"."heartrobber:envelope"
data modify storage heartrobber:mail temp.components.custom_name set from storage heartrobber:mail temp.sender
function heartrobber:triggered/dispenser/backtrack_into_dispenser {function:"heartrobber:triggered/dispenser/populate {source:'storage heartrobber:mail temp'}"}