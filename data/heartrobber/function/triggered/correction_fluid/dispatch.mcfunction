execute if items entity @s weapon.offhand written_book if function heartrobber:triggered/correction_fluid/dispatch/book run return 0
execute if items entity @s weapon.offhand #heartrobber:maps if function heartrobber:triggered/correction_fluid/dispatch/map run return 0
execute if items entity @s weapon.offhand #candles unless items entity @s weapon.offhand candle if function heartrobber:triggered/correction_fluid/dispatch/candle run return 1
execute if items entity @s weapon.offhand #shulker_boxes unless items entity @s weapon.offhand shulker_box if function heartrobber:triggered/correction_fluid/dispatch/shulker_box run return 1
execute if items entity @s weapon.offhand #bundles unless items entity @s weapon.offhand bundle if function heartrobber:triggered/correction_fluid/dispatch/bundle run return 1
execute if items entity @s weapon.offhand #terracotta[count={min:8}] unless items entity @s weapon.offhand terracotta if function heartrobber:triggered/correction_fluid/dispatch/terracotta run return 1
execute if items entity @s weapon.offhand #heartrobber:stained_glass[count={min:8}] if function heartrobber:triggered/correction_fluid/dispatch/glass run return 1
execute if items entity @s weapon.offhand #heartrobber:stained_glass_panes[count={min:8}] if function heartrobber:triggered/correction_fluid/dispatch/glass_pane run return 1
execute if function heartrobber:triggered/correction_fluid/dispatch/mob run return 0