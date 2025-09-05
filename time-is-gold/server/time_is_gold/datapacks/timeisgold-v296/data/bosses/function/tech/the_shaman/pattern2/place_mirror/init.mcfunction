execute as @s at @s at @n[type=marker,tag=boss.arena_center] run function bosses:tech/utils/random_pos/init {dx:10, dz:10, tag:"bosses.the_shaman.pattern2.marker.mirror_pos_temp"}
function system:utils/uuid_tokenizer/init
execute as @s at @s at @n[type=marker,tag=bosses.the_shaman.pattern2.marker.mirror_pos_temp] positioned ~ ~1 ~ run execute summon marker run function bosses:tech/the_shaman/pattern2/place_mirror/set_data
execute at @s run kill @n[type=marker,tag=bosses.the_shaman.pattern2.marker.mirror_pos_temp]

# SFX
execute positioned ~ ~ ~ run playsound entity.illusioner.cast_spell hostile @a ~ ~ ~ 1 1 1