$execute unless data entity @s {"SpawnDimension":"minecraft:the_end"} unless dimension the_end run title @s actionbar [{"text":"$(x) $(y) $(z) ($(qx) $(qz))","color":"$(w)"},{"text":" ][ ","color":"dark_$(w)"},{"text":"$(cx) $(cy) $(cz)","color":"$(w)"},{"text":" ][ ","color":"dark_$(w)"},{"text":"$(Y)° $(p)°","color":"$(w)"},{"text":" ]","color":"dark_$(w)"},{"text":"[ ","color":"dark_$(c)"}, {"text":"$(sx) $(sy) $(sz) ($(rx) $(rz))","color":"$(c)"}]
$execute unless data entity @s {"SpawnDimension":"minecraft:the_end"} if dimension the_end run title @s actionbar [{"text":"$(x) $(y) $(z)","color":"$(w)"},{"text":" ][ ","color":"dark_$(w)"},{"text":"$(cx) $(cy) $(cz)","color":"$(w)"},{"text":" ][ ","color":"dark_$(w)"},{"text":"$(Y)° $(p)°","color":"$(w)"},{"text":" ]","color":"dark_$(w)"},{"text":"[ ","color":"dark_$(c)"}, {"text":"$(sx) $(sy) $(sz) ($(rx) $(rz))","color":"$(c)"}]
$execute if data entity @s {"SpawnDimension":"minecraft:the_end"} unless dimension the_end run title @s actionbar [{"text":"$(x) $(y) $(z) ($(qx) $(qz))","color":"$(w)"},{"text":" ][ ","color":"dark_$(w)"},{"text":"$(cx) $(cy) $(cz)","color":"$(w)"},{"text":" ][ ","color":"dark_$(w)"},{"text":"$(Y)° $(p)°","color":"$(w)"},{"text":" ]","color":"dark_$(w)"},{"text":"[ ","color":"dark_$(c)"}, {"text":"$(sx) $(sy) $(sz)","color":"$(c)"}]
$execute if data entity @s {"SpawnDimension":"minecraft:the_end"} if dimension the_end run title @s actionbar [{"text":"$(x) $(y) $(z)","color":"$(w)"},{"text":" ][ ","color":"dark_$(w)"},{"text":"$(cx) $(cy) $(cz)","color":"$(w)"},{"text":" ][ ","color":"dark_$(w)"},{"text":"$(Y)° $(p)°","color":"$(w)"},{"text":" ]","color":"dark_$(w)"},{"text":"[ ","color":"dark_$(c)"}, {"text":"$(sx) $(sy) $(sz)","color":"$(c)"}]