advancement revoke @s only heartrobber:spawner_endpoint

function heartrobber:triggered/fix_spawner/template {entity:{id:"minecraft:marker",Tags:["heartrobber_endpointPlace"]},on_success:"heartrobber:triggered/fix_spawner/endpoint_fix"}