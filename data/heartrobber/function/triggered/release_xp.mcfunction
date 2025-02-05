execute store result score @s heartrobber_compare run data get entity @s SelectedItem.components."minecraft:damage"
execute if score @s heartrobber_compare matches ..999 run tag @s add heartrobber_xpReleaser
execute as @s[tag=heartrobber_xpReleaser] anchored eyes run summon minecraft:experience_orb ^ ^ ^1 {Value:1}
execute as @s[tag=heartrobber_xpReleaser] run item modify entity @s weapon.mainhand {function:set_damage,add:true,damage:-0.001001}
tag @s remove heartrobber_xpReleaser