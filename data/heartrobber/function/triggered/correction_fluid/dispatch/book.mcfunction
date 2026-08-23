item modify entity @s weapon.offhand {type:set_count,count:-1,add:true}
give @s writable_book
advancement grant @s only heartrobber:brewing/clear_book
execute as @s[gamemode=!creative] run function heartrobber:triggered/correction_fluid/deplete
return 1