$item modify entity @s weapon.$(hand) {function:set_components,components:{"minecraft:damage":$(damage),"minecraft:lore":['""','{"text":"$(xp)/1000 XP", "color":"blue", "italic":false}']}}
$title @s actionbar {"text":"$(xp)/1000 XP", "color":"gray"}