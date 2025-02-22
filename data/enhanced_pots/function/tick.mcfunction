# game rules
scoreboard objectives add enhanced_pots.item_count dummy

execute as @e[type=minecraft:armor_stand,tag=pot_marker] at @s unless block ~ ~ ~ minecraft:decorated_pot run function enhanced_pots:break_pot

# item added to pot for the first time
# this sets the filter on what is allowed
execute as @e[type=minecraft:armor_stand,tag=pot_marker,tag=!pot_marker_item_set] at @s if data block ~ ~ ~ {item:{}} run data modify entity @s ArmorItems[0] set from block ~ ~ ~ item
# dont allow nested decorated pots
execute as @e[type=minecraft:armor_stand,tag=pot_marker,tag=!pot_marker_item_set] at @s if data block ~ ~ ~ {item:{id:"minecraft:decorated_pot"}} run function enhanced_pots:summon_pot_overflow {count: 1}
execute as @e[type=minecraft:armor_stand,tag=pot_marker,tag=!pot_marker_item_set] at @s if data block ~ ~ ~ {item:{id:"minecraft:decorated_pot"}} run data remove entity @s ArmorItems[0]
execute as @e[type=minecraft:armor_stand,tag=pot_marker,tag=!pot_marker_item_set] at @s if data block ~ ~ ~ {item:{id:"minecraft:decorated_pot"}} run data remove block ~ ~ ~ item
execute as @e[type=minecraft:armor_stand,tag=pot_marker,tag=!pot_marker_item_set] at @s if data block ~ ~ ~ {item:{}} unless data block ~ ~ ~ {item:{id:"minecraft:decorated_pot"}} run function enhanced_pots:inventory/setup with block ~ ~ ~ item
execute as @e[type=minecraft:armor_stand,tag=pot_marker,tag=!pot_marker_item_set] at @s if data block ~ ~ ~ {item:{}} unless data block ~ ~ ~ {item:{id:"minecraft:decorated_pot"}} run tag @s add pot_marker_item_set

# pot fully cleared
execute as @e[type=minecraft:armor_stand,tag=pot_marker,tag=pot_marker_item_set] at @s unless data block ~ ~ ~ {item:{}} if score @s enhanced_pots.item_count matches 1 run data remove entity @s ArmorItems[0]
execute as @e[type=minecraft:armor_stand,tag=pot_marker,tag=pot_marker_item_set] at @s unless data block ~ ~ ~ {item:{}} if score @s enhanced_pots.item_count matches 1 run tag @s remove pot_marker_item_set

# item added to pot
execute as @e[type=minecraft:armor_stand,tag=pot_marker,tag=pot_marker_item_set] at @s if data block ~ ~ ~ {item:{count:2}} if score @s enhanced_pots.item_count matches 96.. run function enhanced_pots:summon_pot_overflow {count: 1}
execute as @e[type=minecraft:armor_stand,tag=pot_marker,tag=pot_marker_item_set] at @s if data block ~ ~ ~ {item:{count:3}} if score @s enhanced_pots.item_count matches 96.. run function enhanced_pots:summon_pot_overflow {count: 2}
execute as @e[type=minecraft:armor_stand,tag=pot_marker,tag=pot_marker_item_set] at @s if data block ~ ~ ~ {item:{count:4}} if score @s enhanced_pots.item_count matches 96.. run function enhanced_pots:summon_pot_overflow {count: 3}
execute as @e[type=minecraft:armor_stand,tag=pot_marker,tag=pot_marker_item_set] at @s if data block ~ ~ ~ {item:{count:5}} if score @s enhanced_pots.item_count matches 96.. run function enhanced_pots:summon_pot_overflow {count: 4}
execute as @e[type=minecraft:armor_stand,tag=pot_marker,tag=pot_marker_item_set] at @s if data block ~ ~ ~ {item:{count:6}} if score @s enhanced_pots.item_count matches 96.. run function enhanced_pots:summon_pot_overflow {count: 5}
# alternate method of locking pot once its full.
# to make this work properly, we need to store the original max stack size of the item to restore it when the pot is broken.
# execute as @e[type=minecraft:armor_stand,tag=pot_marker,tag=pot_marker_item_set] at @s if score @s enhanced_pots.item_count matches 99 run data merge block ~ ~ ~ {item:{components:{"minecraft:max_stack_size":1}}}
execute as @e[type=minecraft:armor_stand,tag=pot_marker,tag=pot_marker_item_set] at @s if data block ~ ~ ~ {item:{count:2}} unless data block ~ ~ ~ {item:{id:"minecraft:decorated_pot"}} unless score @s enhanced_pots.item_count matches 96.. run scoreboard players add @s enhanced_pots.item_count 1
execute as @e[type=minecraft:armor_stand,tag=pot_marker,tag=pot_marker_item_set] at @s if data block ~ ~ ~ {item:{count:3}} unless data block ~ ~ ~ {item:{id:"minecraft:decorated_pot"}} unless score @s enhanced_pots.item_count matches 96.. run scoreboard players add @s enhanced_pots.item_count 2
execute as @e[type=minecraft:armor_stand,tag=pot_marker,tag=pot_marker_item_set] at @s if data block ~ ~ ~ {item:{count:4}} unless data block ~ ~ ~ {item:{id:"minecraft:decorated_pot"}} unless score @s enhanced_pots.item_count matches 96.. run scoreboard players add @s enhanced_pots.item_count 3
execute as @e[type=minecraft:armor_stand,tag=pot_marker,tag=pot_marker_item_set] at @s if data block ~ ~ ~ {item:{count:5}} unless data block ~ ~ ~ {item:{id:"minecraft:decorated_pot"}} unless score @s enhanced_pots.item_count matches 96.. run scoreboard players add @s enhanced_pots.item_count 4
execute as @e[type=minecraft:armor_stand,tag=pot_marker,tag=pot_marker_item_set] at @s if data block ~ ~ ~ {item:{count:6}} unless data block ~ ~ ~ {item:{id:"minecraft:decorated_pot"}} unless score @s enhanced_pots.item_count matches 96.. run scoreboard players add @s enhanced_pots.item_count 5
execute as @e[type=minecraft:armor_stand,tag=pot_marker,tag=pot_marker_item_set] at @s run data modify block ~ ~ ~ item.count set value 1

# item removed from pot, but more items still in backing storage
execute as @e[type=minecraft:armor_stand,tag=pot_marker,tag=pot_marker_item_set] at @s unless data block ~ ~ ~ {item:{}} unless score @s enhanced_pots.item_count matches 1 run function enhanced_pots:inventory/remove

# stop hopper transfer when pot is full
execute as @e[type=minecraft:armor_stand,tag=pot_marker] at @s positioned ~ ~ ~1 if score @s enhanced_pots.item_count matches 96.. if block ~ ~ ~ minecraft:hopper[facing=north] run data modify block ~ ~ ~ TransferCooldown set value 8
execute as @e[type=minecraft:armor_stand,tag=pot_marker] at @s positioned ~ ~ ~-1 if score @s enhanced_pots.item_count matches 96.. if block ~ ~ ~ minecraft:hopper[facing=south] run data modify block ~ ~ ~ TransferCooldown set value 8
execute as @e[type=minecraft:armor_stand,tag=pot_marker] at @s positioned ~1 ~ ~ if score @s enhanced_pots.item_count matches 96.. if block ~ ~ ~ minecraft:hopper[facing=west] run data modify block ~ ~ ~ TransferCooldown set value 8
execute as @e[type=minecraft:armor_stand,tag=pot_marker] at @s positioned ~-1 ~ ~ if score @s enhanced_pots.item_count matches 96.. if block ~ ~ ~ minecraft:hopper[facing=east] run data modify block ~ ~ ~ TransferCooldown set value 8
execute as @e[type=minecraft:armor_stand,tag=pot_marker] at @s positioned ~ ~1 ~ if score @s enhanced_pots.item_count matches 96.. if block ~ ~ ~ minecraft:hopper[facing=down] run data modify block ~ ~ ~ TransferCooldown set value 8