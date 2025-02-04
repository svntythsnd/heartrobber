data modify storage enhanced_pots:broken_pot_data item.raw_name set string storage enhanced_pots:broken_pot_data item.id 10
data merge storage enhanced_pots:broken_pot_data {block:0b}
function enhanced_pots:block_check with storage enhanced_pots:broken_pot_data item
execute if data storage enhanced_pots:broken_pot_data {block:1b} run function enhanced_pots:translate/block with storage enhanced_pots:broken_pot_data item
execute unless data storage enhanced_pots:broken_pot_data {block:1b} run function enhanced_pots:translate/item with storage enhanced_pots:broken_pot_data item