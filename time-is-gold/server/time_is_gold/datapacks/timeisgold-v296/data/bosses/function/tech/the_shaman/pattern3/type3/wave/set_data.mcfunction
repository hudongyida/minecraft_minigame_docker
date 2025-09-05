function system:utils/uuid_tokenizer/init
data modify entity @s data.selfuuid set from storage timeisgold:uuid_tokenizer output

$scoreboard players set @s bosses.the_shaman.pattern3.chalice.circular_wave.max_tick $(tick)
scoreboard players set @s bosses.the_shaman.pattern3.chalice.circular_wave.tick 0

tag @s remove bosses.the_shaman.pattern3.chalice.type3.wave.center.uninitialized