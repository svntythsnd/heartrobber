execute unless items entity @s weapon.offhand written_book unless items entity @s weapon.offhand filled_map at @s positioned ~ ~0.3 ~ anchored feet run function heartrobber:triggered/correction_fluid/raycast/prep
execute if items entity @s weapon.offhand written_book run function heartrobber:triggered/correction_fluid/clear_book
execute if items entity @s weapon.offhand filled_map run function heartrobber:triggered/correction_fluid/clear_map
advancement revoke @s only heartrobber:using_correction_fluid