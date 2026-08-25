advancement revoke @s only heartrobber:using_empty_envelope
execute if score @s heartrobber_mail_seal_cooldown matches 1.. run return 0
execute unless items entity @s weapon.offhand * run return 0
execute unless data entity @s SelectedItem.components."minecraft:custom_name" run return 0
execute if items entity @s weapon.offhand *[custom_data~{"heartrobber:type":18b}] run return 0
execute if items entity @s weapon.offhand *[custom_data~{"heartrobber:type":19b}] run return 0
execute unless function heartrobber:triggered/mail/envelope/validate_name run return 0
function heartrobber:triggered/mail/envelope/prepack