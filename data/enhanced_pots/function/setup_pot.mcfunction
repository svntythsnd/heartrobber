summon marker ~ ~ ~ { Tags: ["pot_marker"] }
execute unless data block ~ ~ ~ LootTable run return 0
data modify storage heartrobber:temp pots.loot_table set from block ~ ~ ~ LootTable
function enhanced_pots:insert_loot with storage heartrobber:temp pots