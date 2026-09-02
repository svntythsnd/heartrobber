execute store result storage heartrobber:temp version.maj int 1 run scoreboard players get maj heartrobber_version
execute store result storage heartrobber:temp version.min int 1 run scoreboard players get min heartrobber_version
execute store success score _ heartrobber_compare store result storage heartrobber:temp version.patch int 1 run scoreboard players get patch heartrobber_version
data merge storage heartrobber:temp {version:{dot:"."}}
execute if score _ heartrobber_compare matches 0 run data merge storage heartrobber:temp {version:{dot:"",patch:""}}
function heartrobber:v_tellraw with storage heartrobber:temp version