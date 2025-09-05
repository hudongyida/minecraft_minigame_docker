execute if score @s bosses.the_shaman.pattern2.mirror.spawn_delay matches 1.. run scoreboard players remove @s bosses.the_shaman.pattern2.mirror.spawn_delay 1
execute unless score @s bosses.the_shaman.pattern2.mirror.spawn_delay matches 1.. run function bosses:tech/the_shaman/pattern2/place_mirror/terminate with entity @s data
execute as @s run scoreboard players operation @s bosses.the_shaman.pattern2.mirror.spawn_max_delay = #SYSTEM bosses.the_shaman.pattern2.mirror.spawn_delay
scoreboard players operation @s bosses.the_shaman.pattern2.mirror.spawn_delay.sfx = #SYSTEM bosses.the_shaman.pattern2.mirror.spawn_delay
scoreboard players operation @s bosses.the_shaman.pattern2.mirror.spawn_delay.sfx -= @s bosses.the_shaman.pattern2.mirror.spawn_delay

# SFX
execute at @s if predicate system:periodic_tick_5 run function system:sfx/dynamic_pitch/init {value:bosses.the_shaman.pattern2.mirror.spawn_delay.sfx, max:bosses.the_shaman.pattern2.mirror.spawn_max_delay, function:"bosses:tech/the_shaman/pattern2/place_mirror/sfx/summon_prep"}

# VFX
execute at @s run function system:vfx/dynamic_area/init {x:0.75, y:0.75, z:0.75, value:bosses.the_shaman.pattern2.mirror.spawn_delay, max:bosses.the_shaman.pattern2.mirror.spawn_max_delay, function:"bosses:tech/the_shaman/pattern2/place_mirror/vfx/enchant_glyph"}
execute at @s run function system:vfx/dynamic_area/init {x:0.5, y:0.5, z:0.5, value:bosses.the_shaman.pattern2.mirror.spawn_delay, max:bosses.the_shaman.pattern2.mirror.spawn_max_delay, function:"bosses:tech/the_shaman/pattern2/place_mirror/vfx/gold_particle"}