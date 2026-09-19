advancement revoke @s only heartrobber:spawner_ender_relay

function heartrobber:triggered/fix_spawner/template {entity:{id:"minecraft:marker",Tags:["heartrobber_relayPlace"]},on_success:"heartrobber:triggered/fix_spawner/ender_relay_fix"}