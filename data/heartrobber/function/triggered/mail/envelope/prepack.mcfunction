data modify storage heartrobber:mail tempitem set from entity @s equipment.offhand
data merge storage heartrobber:mail {tempitem:{components:{}}}
swing
playsound heartrobber:item.envelope.close player @a
function heartrobber:triggered/mail/envelope/pack with storage heartrobber:mail tempitem