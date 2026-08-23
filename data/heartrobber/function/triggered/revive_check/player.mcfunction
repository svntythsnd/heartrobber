execute align xz run playsound heartrobber:item.heart.revive player @a ~0.5 ~ ~0.5
execute align xz run particle dust_color_transition{scale:0.7f, from_color:[1, 1, 5], to_color:[1, 1, 1]} ~0.5 ~1 ~0.5 0.5 0.5 0.5 0 20 normal @a
gamemode survival @s
advancement grant @s only heartrobber:adventure/revived
function heartrobber:triggered/health
execute align xyz run tp @s ~0.5 ~2.5 ~0.5