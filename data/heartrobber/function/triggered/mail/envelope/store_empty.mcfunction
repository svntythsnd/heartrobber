advancement revoke @s only heartrobber:using_empty_envelope_off
execute unless data entity @s equipment.offhand.components."minecraft:custom_name" run return 0
execute unless function heartrobber:triggered/mail/envelope/validate_name_offhand run return 0
function heartrobber:triggered/mail/envelope/pack_empty