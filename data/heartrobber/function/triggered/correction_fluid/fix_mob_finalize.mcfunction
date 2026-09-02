execute at @n[tag=heartrobber_correctionHit] run playsound heartrobber:item.correction_fluid.clear_tag player @a
swing
data remove entity @n[tag=heartrobber_correctionHit] CustomName
advancement grant @s only heartrobber:brewing/clear_mob
execute as @s[gamemode=!creative] run function heartrobber:triggered/correction_fluid/deplete