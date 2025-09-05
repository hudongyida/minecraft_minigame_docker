# $(selfuuid)   - 거울 마커 UUID Token

$scoreboard players operation @s bosses.the_shaman.pattern2.mirror.on_sight = $(selfuuid) bosses.the_shaman.pattern2.mirror.on_sight
scoreboard players operation @s bosses.the_shaman.pattern2.mirror.max_on_sight = #SYSTEM bosses.the_shaman.pattern2.mirror.max_on_sight
execute as @s at @s run function system:sfx/dynamic_pitch/init {value:bosses.the_shaman.pattern2.mirror.on_sight, max:bosses.the_shaman.pattern2.mirror.max_on_sight, function:"bosses:tech/the_shaman/pattern2/mirror/sfx/watching_mirror_sfx"}