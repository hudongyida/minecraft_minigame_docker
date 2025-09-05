# 실행 인자: 제사장 보스 엔티티

execute at @s at @n[type=marker,tag=boss.arena_center] run function bosses:tech/utils/random_pos/init {dx:10, dz:10, tag:"bosses.the_shaman.pattern3.marker.chalice_pos_temp"}

execute store result score @s bosses.the_shaman.pattern3.randomizer run function bosses:tech/the_shaman/pattern3/chalice/pick_type/init

data modify storage timeisgold:function_api stack append value {bossuuid:""}
execute as @s on passengers as @s[type=marker,tag=boss.the_shaman.marker.AI] run data modify storage timeisgold:function_api stack[-1].bossuuid set from entity @s data.bossuuid

execute if score @s bosses.the_shaman.pattern3.randomizer matches 1 as @s at @s at @n[type=marker,tag=bosses.the_shaman.pattern3.marker.chalice_pos_temp] positioned ~ ~ ~ run function bosses:tech/the_shaman/pattern3/type1/summon/init with storage timeisgold:function_api stack[-1]
execute if score @s bosses.the_shaman.pattern3.randomizer matches 2 as @s at @s at @n[type=marker,tag=bosses.the_shaman.pattern3.marker.chalice_pos_temp] positioned ~ ~ ~ run function bosses:tech/the_shaman/pattern3/type2/summon/init with storage timeisgold:function_api stack[-1]
execute if score @s bosses.the_shaman.pattern3.randomizer matches 3 as @s at @s at @n[type=marker,tag=bosses.the_shaman.pattern3.marker.chalice_pos_temp] positioned ~ ~ ~ run function bosses:tech/the_shaman/pattern3/type3/summon/init with storage timeisgold:function_api stack[-1]
execute if score @s bosses.the_shaman.pattern3.randomizer matches 4 as @s at @s at @n[type=marker,tag=bosses.the_shaman.pattern3.marker.chalice_pos_temp] positioned ~ ~ ~ run function bosses:tech/the_shaman/pattern3/type4/summon/init with storage timeisgold:function_api stack[-1]

data remove storage timeisgold:function_api stack[-1]
execute at @s run kill @n[type=marker,tag=bosses.the_shaman.pattern3.marker.chalice_pos_temp]