# 타겟이 유효한지 확인
execute as @s if data entity @s data.targetuuid run function it:tech/active/soul_prison/tracking_object/check_target with entity @s data

# 타겟이 없을 경우 지정
execute as @s unless data entity @s data.targetuuid at @s if entity @e[tag=monster,distance=..6] run function it:tech/active/soul_prison/tracking_object/set_target

# SFX
execute as @s at @s if predicate it:20pc run playsound minecraft:particle.soul_escape ambient @a ~ ~ ~ 1 1

# VFX
execute as @s at @s run particle soul_fire_flame ~ ~ ~ .1 .1 .1 0 2 force
execute as @s at @s run particle soul ~ ~ ~ 0 0 0 0 1 force
execute as @s at @s run particle dust{color:[0.000,0.000,0.000],scale:0.5} ~ ~ ~ .3 .3 .3 0 5 force
execute as @s at @s if data entity @s data.targetuuid run particle flame ~ ~ ~ .1 .1 .1 0 2 force