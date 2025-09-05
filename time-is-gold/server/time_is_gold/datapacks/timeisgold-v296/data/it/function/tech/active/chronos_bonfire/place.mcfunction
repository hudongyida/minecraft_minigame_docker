execute positioned ~ ~ ~ run summon marker ~ ~ ~ {Tags:["item.chronos_bonfire.marker.placed","admin.kill_on_reset","item.chronos_bonfire.marker.uninitialized"],data:{playeruuid:"", displayuuid:"", interactionuuid:""}}
function system:utils/uuid_tokenizer/init
execute positioned ~ ~ ~ as @n[type=marker,tag=item.chronos_bonfire.marker.uninitialized,distance=..0.5] run data modify entity @s data.playeruuid set from storage timeisgold:uuid_tokenizer output
execute positioned ~ ~ ~ as @n[type=marker,tag=item.chronos_bonfire.marker.uninitialized,distance=..0.5] run function it:tech/active/chronos_bonfire/setup

# SFX
execute positioned ~ ~ ~ run playsound item.firecharge.use player @a ~ ~ ~ 1 1
execute positioned ~ ~ ~ run playsound particle.soul_escape ambient @a ~ ~ ~ 1 1