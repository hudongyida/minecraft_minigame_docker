function system:utils/uuid_tokenizer/init
data modify entity @s data.selfuuid set from storage timeisgold:uuid_tokenizer output
execute as @s at @s run function bosses:tech/the_shaman/pattern3/type3/summon/place_chalice with entity @s data

execute at @s run function system:vfx/clock_rotate/init {duration:60, radius:1, distance:1, clock_r:0.95, clock_g:0.33, clock_b:0.33}
scoreboard players operation @s bosses.the_shaman.pattern3.chalice.spawn_sfx = #SYSTEM bosses.the_shaman.pattern3.chalice.spawn_sfx
scoreboard players operation @s bosses.the_shaman.pattern3.chalice.destroy_tick = #SYSTEM bosses.the_shaman.pattern3.chalice.destroy_tick

tag @s remove bosses.the_shaman.pattern3.chalice.type3.marker.uninitialized