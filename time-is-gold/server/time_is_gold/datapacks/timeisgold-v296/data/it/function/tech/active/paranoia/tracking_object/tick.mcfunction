# 타겟이 유효한지 확인
execute if data entity @s data.targetuuid run function it:tech/active/paranoia/tracking_object/check_target with entity @s data

# 타겟이 없을 경우 지정
execute unless data entity @s data.targetuuid at @s if entity @e[tag=monster,distance=..9] run function it:tech/active/paranoia/tracking_object/set_target

# SFX
execute at @s if predicate it:20pc run playsound minecraft:block.sculk_catalyst.bloom block @a ~ ~ ~ 1 0.5

# VFX
data modify storage timeisgold:function_api stack append value {x:0, y:0, z:0}
data modify storage timeisgold:function_api stack[-1].x set from entity @s Pos[0]
data modify storage timeisgold:function_api stack[-1].y set from entity @s Pos[1]
data modify storage timeisgold:function_api stack[-1].z set from entity @s Pos[2]
execute at @s run function it:tech/active/paranoia/tracking_object/particle_trail with storage timeisgold:function_api stack[-1]
data remove storage timeisgold:function_api stack[-1]

execute at @s run particle dust{color:[0.000,0.22,0.77],scale:1} ~ ~ ~ .2 .2 .2 0 5 force
execute at @s if data entity @s data.targetuuid run particle dust{color:[0.000,0.5,0.5],scale:1} ~ ~ ~ .3 .3 .3 0 2 force