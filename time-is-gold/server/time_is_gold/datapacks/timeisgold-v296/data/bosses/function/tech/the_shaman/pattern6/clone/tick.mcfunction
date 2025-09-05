# 실행 인자: @e[type=illusioner,tag=boss.the_shaman.pattern6.clone]

# VFX
execute at @s run particle wax_off ~ ~1 ~ 0.25 0.5 0.25 0.5 1 normal
execute at @s anchored eyes facing entity @p eyes run rotate @s ~ ~

# 본체가 존재하지 않을 경우 파괴
execute as @s on passengers as @s[type=marker,tag=bosses.the_shaman.pattern6.clone.marker.manager] run function bosses:tech/the_shaman/pattern6/clone/origin_check with entity @s data

data modify storage timeisgold:function_api stack append value {selfuuid:""}
execute as @s on passengers as @s[type=marker,tag=bosses.the_shaman.pattern6.clone.marker.manager] run data modify storage timeisgold:function_api stack[-1].selfuuid set from entity @s data.selfuuid
execute at @s run function bosses:tech/the_shaman/pattern6/clone/operation/init with storage timeisgold:function_api stack[-1]
data remove storage timeisgold:function_api stack[-1]

execute at @s run function bosses:tech/the_shaman/pattern6/clone/mirror_shard/init