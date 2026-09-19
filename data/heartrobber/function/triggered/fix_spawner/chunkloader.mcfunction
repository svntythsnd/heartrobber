advancement revoke @s only heartrobber:spawner_chunkloader

function heartrobber:triggered/fix_spawner/template {entity:{id:"minecraft:marker",Tags:["heartrobber_chunkloaderPlace"]},on_success:"heartrobber:triggered/fix_spawner/chunkloader_fix"}