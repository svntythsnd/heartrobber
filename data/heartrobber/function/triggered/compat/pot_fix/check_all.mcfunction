scoreboard players set _ heartrobber_compare 1
execute unless data storage heartrobber:temp compat_queue[0].components."minecraft:pot_decorations".left run scoreboard players set _ heartrobber_compare 0
execute unless data storage heartrobber:temp compat_queue[0].components."minecraft:pot_decorations".right run scoreboard players set _ heartrobber_compare 0
execute unless data storage heartrobber:temp compat_queue[0].components."minecraft:pot_decorations".front run scoreboard players set _ heartrobber_compare 0
execute unless data storage heartrobber:temp compat_queue[0].components."minecraft:pot_decorations".back run scoreboard players set _ heartrobber_compare 0
return run execute if score _ heartrobber_compare matches 0