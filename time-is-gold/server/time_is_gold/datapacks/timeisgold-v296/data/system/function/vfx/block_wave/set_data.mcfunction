function system:utils/uuid_tokenizer/init
data modify entity @s data.selfuuid set from storage timeisgold:uuid_tokenizer output

$scoreboard players set @s system.vfx.block_wave.max_tick $(tick)
scoreboard players set @s system.vfx.block_wave.tick 0

tag @s remove system.vfx.block_wave.marker.uninitialized