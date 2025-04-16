data modify storage heartrobber:mail tempitem set from entity @s equipment.offhand
data merge storage heartrobber:mail {tempitem:{components:{}}}
playsound heartrobber:item.envelope.close neutral @a
function heartrobber:triggered/mail/envelope/pack with storage heartrobber:mail tempitem