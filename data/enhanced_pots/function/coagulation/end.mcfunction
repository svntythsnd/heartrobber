loot spawn ~ ~1 ~ loot enhanced_pots:four_bottles
item replace block ~ ~ ~ container.0 with honey_block
scoreboard players set @s enhanced_pots.item_count 1
scoreboard players set @s enhanced_pots.virtual_count 1
data modify entity @s data.item set from block ~ ~ ~ item
advancement grant @a[distance=..20] only enhanced_pots:husbandry/coagulation
playsound enhanced_pots:block.decorated_pot.coagulate block @a
function enhanced_pots:coagulation/stop