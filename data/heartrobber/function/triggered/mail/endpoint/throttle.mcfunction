$execute store result score @s heartrobber_compare run data get storage heartrobber:mail endpoints."$(endpoint_id)".throttle
scoreboard players remove @s[scores={heartrobber_compare=1..}] heartrobber_compare 1
$execute store result storage heartrobber:mail endpoints."$(endpoint_id)".throttle byte 1 run scoreboard players get @s heartrobber_compare
return run execute unless score @s heartrobber_compare matches 0..1