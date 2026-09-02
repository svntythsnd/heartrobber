function heartrobber:tick/health_default
function heartrobber:tick/death_trigger
function heartrobber:tick/revive_check
function heartrobber:tick/ender_relay
function heartrobber:tick/ender_relay_look
function heartrobber:tick/ender_relay_work
function heartrobber:tick/ender_relay_cool
function heartrobber:tick/chunkloader
function heartrobber:tick/chunkloader_look
function heartrobber:tick/chunkloader_work
execute as @a[gamemode=!spectator] run function heartrobber:tick/holdables
function heartrobber:tick/honey_crystallize
function heartrobber:tick/armor_stand_break_small
function heartrobber:tick/armor_stand_break
function heartrobber:tick/glass_frames
function heartrobber:tick/mail_check
execute as @a unless score @s heartrobber_molasses_count matches ..-1 run function heartrobber:tick/molasses_delta
function heartrobber:tick/set_stand_components
execute as @a run function heartrobber:tick/reconcile_advancements
execute as @e[type=experience_orb] run function heartrobber:tick/clumps
execute as @a[level=0] run function heartrobber:tick/adjust_xp_float_error
function heartrobber:tick/throwables
function heartrobber:tick/intercept_mooshroom
function heartrobber:tick/dispenser
function heartrobber:tick/clear_cache
function heartrobber:tick/persistent_hearts