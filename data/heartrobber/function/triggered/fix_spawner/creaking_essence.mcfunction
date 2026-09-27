advancement revoke @s only heartrobber:spawner_creaking_essence

function heartrobber:triggered/fix_spawner/template {entity:{id:"minecraft:creaking",PersistenceRequired:1b},on_success:"heartrobber:triggered/fix_spawner/creaking_essence_fix"}