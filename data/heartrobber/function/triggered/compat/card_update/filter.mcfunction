data modify storage heartrobber:cardtemp UUID set from storage heartrobber:temp compat_queue[0].components."minecraft:custom_data"."heartrobber:uuid"
data modify storage heartrobber:cardtemp Slot set from storage heartrobber:temp compat_queue[0].Slot
data modify storage heartrobber:cardtemp text set from storage heartrobber:temp compat_queue[0].components."minecraft:lore"[0].extra[0].text
data modify storage heartrobber:cardtemp location set value "storage heartrobber:cardtemp name set"
function heartrobber:macro/recall_uuid_name with storage heartrobber:cardtemp
function heartrobber:triggered/compat/card_update/process with storage heartrobber:cardtemp
data remove storage heartrobber:temp compat_queue[0]
function heartrobber:triggered/compat/card_update/iteration