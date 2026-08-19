# item added to pot for the first time
# this sets the filter on what is allowed

execute if data block ~ ~ ~ item run data modify entity @s data.item set from block ~ ~ ~ item

# dont allow nested decorated pots
execute if items block ~ ~ ~ contents decorated_pot[custom_data={"enhanced_pots:takes":true}] run function enhanced_pots:marker_tick/remove_nested
execute if data block ~ ~ ~ item unless items block ~ ~ ~ contents decorated_pot[custom_data={"enhanced_pots:takes":true}] run function enhanced_pots:inventory/setup with block ~ ~ ~ item
