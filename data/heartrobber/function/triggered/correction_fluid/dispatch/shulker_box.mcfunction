data modify storage heartrobber:temp correction_fluid.components set value {}
data modify storage heartrobber:temp correction_fluid.components set from entity @s equipment.offhand.components
item replace entity @s weapon.offhand with shulker_box
playsound heartrobber:item.correction_fluid.clean_container player @a
function heartrobber:triggered/correction_fluid/finalize_components with storage heartrobber:temp correction_fluid
execute as @s[gamemode=!creative] run function heartrobber:triggered/correction_fluid/deplete
return 1