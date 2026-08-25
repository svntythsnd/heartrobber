execute if score #str_this heartrobber_compare >= #str_length heartrobber_compare run return 1
execute store result storage heartrobber:temp validate_string.this int 1 run scoreboard players get #str_this heartrobber_compare
execute store result storage heartrobber:temp validate_string.next int 1 run scoreboard players get #str_next heartrobber_compare
function heartrobber:validate_string/extract_char with storage heartrobber:temp validate_string
execute if data storage heartrobber:temp {validate_string:{char:"\""}} run return 0
execute if data storage heartrobber:temp {validate_string:{char:"\\"}} run return 0
scoreboard players add #str_this heartrobber_compare 1
scoreboard players add #str_next heartrobber_compare 1
return run function heartrobber:validate_string/iteration