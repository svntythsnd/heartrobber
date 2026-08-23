item modify entity @s weapon.offhand {type:set_count,count:-1,add:true}
give @s candle
execute as @s[gamemode=!creative] run function heartrobber:triggered/correction_fluid/deplete
return 1