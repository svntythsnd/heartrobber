$summon item ~ ~-0.2 ~ {Item:$(thrown_item),Motion:$(motion),PickupDelay:15s}
$execute unless data entity @s Owner run summon item ~ ~ ~ {Item:$(use_remainder),Motion:$(motion),PickupDelay:15s}
$execute on origin at @s run stopsound @a[distance=..16] player entity.$(name).throw
$function $(on_throw)