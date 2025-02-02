execute store result storage heartrobber:relaytemp x int 1 run data get block ~ ~-2.5 ~ item.components."minecraft:lodestone_tracker".target.pos[0]
execute store result storage heartrobber:relaytemp y int 1 run data get block ~ ~-2.5 ~ item.components."minecraft:lodestone_tracker".target.pos[1]
execute store result storage heartrobber:relaytemp z int 1 run data get block ~ ~-2.5 ~ item.components."minecraft:lodestone_tracker".target.pos[2]
function heartrobber:macro/ender_relay_teleport with storage heartrobber:relaytemp