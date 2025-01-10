$give @s trial_key[custom_data={"heartrobber:type":6},custom_model_data=31824,lore=['[{"text":$(name),"color":"dark_gray","italic":false},{"text":": ","color":"dark_gray","italic":false},{"text":$(lore),"color":"gray","italic":false}]'],item_name='{"translate":"item.heartrobber.inscribed_card"}']
item modify entity @s weapon.offhand {function:set_count,add:true,count:-1}
execute if items entity @s weapon.mainhand name_tag[damage=49] run function heartrobber:triggered/break_item
item modify entity @s weapon.mainhand {function:set_damage,add:true,damage:-0.02001}