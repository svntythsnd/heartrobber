data modify storage heartrobber:temp fix_byte set from storage heartrobber:temp compat_queue[0].components."minecraft:custom_data"
data modify storage heartrobber:temp Slot set from storage heartrobber:temp compat_queue[0].Slot
execute store result storage heartrobber:temp fix_byte."heartrobber:type" byte 1 run data get storage heartrobber:temp fix_byte."heartrobber:type"
function heartrobber:triggered/compat/fix_byte/finalize with storage heartrobber:temp