execute unless data storage heartrobber:temp compat_queue[0] run return 0
data modify storage heartrobber:temp card.UUID set from storage heartrobber:temp compat_queue[0].components."minecraft:custom_data"."heartrobber:uuid"
data modify storage heartrobber:temp card.Slot set from storage heartrobber:temp compat_queue[0].Slot
data modify storage heartrobber:temp card.text set from storage heartrobber:temp compat_queue[0].components."minecraft:lore"[0].extra[0].text
function heartrobber:macro/recall_uuid_name with storage heartrobber:temp card
function heartrobber:triggered/compat/card_update/process with storage heartrobber:temp card
data remove storage heartrobber:temp compat_queue[0]
function heartrobber:triggered/compat/card_update/iteration