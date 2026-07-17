data modify storage heartrobber:temp fix_byte set from storage heartrobber:temp compat_queue[0].components."minecraft:custom_data"
data modify storage heartrobber:temp Slot set from storage heartrobber:temp compat_queue[0].Slot
execute store result storage heartrobber:temp fix_byte."heartrobber:type" byte 1 run data get storage heartrobber:temp fix_byte."heartrobber:type"
data modify storage heartrobber:temp compare set from storage heartrobber:temp compat_queue[0]
execute if data storage heartrobber:temp compare{id:"minecraft:allay_spawn_egg"} if data storage heartrobber:temp fix_byte{"heartrobber:type":6b} run data modify storage heartrobber:temp fix_byte."heartrobber:type" set value 3b
function heartrobber:triggered/compat/fix_byte/finalize with storage heartrobber:temp