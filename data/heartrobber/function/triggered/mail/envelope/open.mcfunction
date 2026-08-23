function heartrobber:triggered/mail/envelope/summon with entity @s SelectedItem.components."minecraft:custom_data"."heartrobber:envelope"
execute unless data entity @s SelectedItem.components."minecraft:custom_data"."heartrobber:returned" run data modify storage heartrobber:mail temp.sender set from entity @s SelectedItem.components."minecraft:lore"[0]."text"
execute if data entity @s SelectedItem.components."minecraft:custom_data"."heartrobber:returned" run data modify storage heartrobber:mail temp.sender set from entity @s SelectedItem.components."minecraft:custom_data"."heartrobber:returned"
item replace entity @s weapon.mainhand with clock[item_model="heartrobber:empty_envelope",item_name={translate: "item.heartrobber.empty_envelope", fallback: "item.heartrobber.empty_envelope"},custom_data={"heartrobber:type": 18b},consumable={consume_seconds: 3.40282347e+38}]
function heartrobber:triggered/mail/envelope/resend_prep with storage heartrobber:mail temp
swing @s mainhand
scoreboard players set @s heartrobber_mail_seal_cooldown 10
advancement revoke @s only heartrobber:using_sent_envelope