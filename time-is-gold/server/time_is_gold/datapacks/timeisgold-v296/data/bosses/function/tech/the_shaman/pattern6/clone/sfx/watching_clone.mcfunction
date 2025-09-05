# $(selfuuid)   - 분신 UUID Token

$scoreboard players operation @s bosses.the_shaman.pattern6.clone.on_sight = $(selfuuid) bosses.the_shaman.pattern6.clone.on_sight
scoreboard players operation @s bosses.the_shaman.pattern6.clone.max_on_sight = #SYSTEM bosses.the_shaman.pattern6.clone.max_on_sight
execute as @s at @s run function system:sfx/dynamic_pitch/init {value:bosses.the_shaman.pattern6.clone.on_sight, max:bosses.the_shaman.pattern6.clone.max_on_sight, function:"bosses:tech/the_shaman/pattern6/clone/sfx/watching_clone_sfx"}