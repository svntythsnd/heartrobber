item modify entity @s weapon.offhand {type:set_count,count:-8,add:true}
give @s glass 8
execute as @s[gamemode=!creative] run function heartrobber:triggered/correction_fluid/deplete
return 1