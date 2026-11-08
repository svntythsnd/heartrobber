data modify storage heartrobber:math inputs set value [-0.01f]
data modify storage heartrobber:math inputs append from entity @s Motion[0]
function heartrobber:math/add
data modify entity @s Motion[0] set from storage heartrobber:math result