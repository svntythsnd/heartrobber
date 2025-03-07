# item added to pot for the first time
# this sets the filter on what is allowed
execute if data block ~ ~ ~ item run data modify entity @s data.item set from block ~ ~ ~ item

# dont allow nested decorated pots
execute if items block ~ ~ ~ container.0 #enhanced_pots:disallowed run function enhanced_pots:summon_pot_overflow {count: 1}
execute if items block ~ ~ ~ container.0 #enhanced_pots:disallowed run data remove entity @s data.item
execute if items block ~ ~ ~ container.0 #enhanced_pots:disallowed run data remove block ~ ~ ~ item
execute if data block ~ ~ ~ item unless items block ~ ~ ~ container.0 #enhanced_pots:disallowed run function enhanced_pots:inventory/setup with block ~ ~ ~ item