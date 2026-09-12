data remove storage heartrobber:temp compat_queue[0].components."minecraft:entity_data".data.endpoint_id
execute unless data storage heartrobber:temp compat_queue[0].components."minecraft:custom_name" run return run function heartrobber:triggered/compat/finalize with storage heartrobber:temp compat_queue[0]
data modify storage heartrobber:temp compat_queue[0].components."minecraft:entity_data".data.endpoint_id set from storage heartrobber:temp compat_queue[0].components."minecraft:custom_name"
function heartrobber:triggered/compat/finalize with storage heartrobber:temp compat_queue[0]