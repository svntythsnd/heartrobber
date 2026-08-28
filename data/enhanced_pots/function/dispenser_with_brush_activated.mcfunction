execute if block ~1 ~ ~ dispenser[facing=west,triggered=true] if items block ~1 ~ ~ container.* minecraft:brush run return 1
execute if block ~ ~ ~1 dispenser[facing=north,triggered=true] if items block ~ ~ ~1 container.* minecraft:brush run return 1
execute if block ~-1 ~ ~ dispenser[facing=east,triggered=true] if items block ~-1 ~ ~ container.* minecraft:brush run return 1
execute if block ~ ~ ~-1 dispenser[facing=south,triggered=true] if items block ~ ~ ~-1 container.* minecraft:brush run return 1
execute if block ~ ~-1 ~ dispenser[facing=up,triggered=true] if items block ~ ~-1 ~ container.* minecraft:brush run return 1
execute if block ~ ~1 ~ dispenser[facing=down,triggered=true] if items block ~ ~1 ~ container.* minecraft:brush run return 1
return 0