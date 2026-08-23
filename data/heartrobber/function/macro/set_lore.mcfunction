function heartrobber:macro/save_uuid_name with storage heartrobber:cardtemp
$give @s clock[custom_data={"heartrobber:type":6b,"heartrobber:uuid":$(UUID)},item_model="heartrobber:inscribed_card",lore=[{"color":"dark_gray","italic":false,"text":"$(name): ","extra":$(extra)}],item_name={"translate":"item.heartrobber.inscribed_card", "fallback":"item.heartrobber.inscribed_card"}]
advancement grant @s only heartrobber:metallurgy/inscribe
item modify entity @s weapon.offhand {type:set_count,add:true,count:-1}
execute if entity @s[gamemode=!creative] if items entity @s weapon.mainhand name_tag[damage=49] run function heartrobber:triggered/break_item
execute if entity @s[gamemode=!creative] run item modify entity @s weapon.mainhand {type:set_damage,add:true,damage:-0.02001}