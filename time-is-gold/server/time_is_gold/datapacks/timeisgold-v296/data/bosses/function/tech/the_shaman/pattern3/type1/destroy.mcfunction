execute at @s run function bosses:tech/the_shaman/pattern3/type1/wave/init with entity @s data

# SFX
execute at @s run function bosses:tech/the_shaman/pattern3/chalice/destroy_sfx

# VFX
execute at @s run function bosses:tech/the_shaman/pattern3/chalice/destroy_vfx

execute at @s run function bosses:tech/the_shaman/pattern3/macro/kill_chalice with entity @s data
execute at @s run function system:vfx/clock_rotate/kill_clock
kill @s