advancement revoke @s only heartrobber:using_blank_disc
playsound heartrobber:item.blank_disc.copy player @a
swing @s mainhand
advancement grant @s only heartrobber:adventure/blank_disc
execute if items entity @s weapon.offhand *[custom_data={"heartrobber:type":35b}] run return run item replace entity @s weapon.mainhand with music_disc_cat[item_model="heartrobber:music_disc_dog",jukebox_playable="heartrobber:dog",custom_data={"heartrobber:type":35b}]
data modify storage heartrobber:temp blank_disc.id set from entity @s equipment.offhand.id
function heartrobber:macro/blank_disc with storage heartrobber:temp blank_disc