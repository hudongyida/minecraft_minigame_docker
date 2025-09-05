$execute at @s run function bosses:tech/the_shaman/pattern3/type3/wave/init {step:0.9, tick:7, bossuuid:"$(bossuuid)"}

# SFX
execute at @s run function bosses:tech/the_shaman/pattern3/chalice/destroy_sfx

# VFX
execute at @s run function bosses:tech/the_shaman/pattern3/chalice/destroy_vfx

execute at @s run function bosses:tech/the_shaman/pattern3/macro/kill_chalice with entity @s data
kill @s