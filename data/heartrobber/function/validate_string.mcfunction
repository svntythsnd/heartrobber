$data modify storage heartrobber:temp validate_string.source set from $(source)
$execute store result score #str_length heartrobber_compare run data get $(source)
scoreboard players set #str_this heartrobber_compare 0
scoreboard players set #str_next heartrobber_compare 1
return run function heartrobber:validate_string/iteration