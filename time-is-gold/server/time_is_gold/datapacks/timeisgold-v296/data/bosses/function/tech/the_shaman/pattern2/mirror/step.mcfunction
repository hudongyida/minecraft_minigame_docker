# 실행 인자: @e[type=marker,tag=bosses.the_shaman.pattern2.mirror.marker]

data modify storage timeisgold:function_api stack append value {x:0, y:0, z:0}
data modify storage timeisgold:function_api stack[-1].x set from entity @s Pos[0]
data modify storage timeisgold:function_api stack[-1].y set from entity @s Pos[1]
data modify storage timeisgold:function_api stack[-1].z set from entity @s Pos[2]
execute as @s at @s run function bosses:tech/the_shaman/pattern2/mirror/vfx/init with storage timeisgold:function_api stack[-1]
data remove storage timeisgold:function_api stack[-1]

execute as @s at @s run function bosses:tech/the_shaman/pattern2/mirror/operation/init with entity @s data

# 거울이 송곳니와 충돌할 경우 파괴
execute at @s positioned ~-1 ~-3 ~-1 if entity @n[type=evoker_fangs,tag=bosses.the_shaman.pattern3.fangs,dx=2,dy=4,dz=2] run function bosses:tech/the_shaman/pattern2/mirror/shatter_b with entity @s data