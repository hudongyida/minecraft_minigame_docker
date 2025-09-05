# 타겟이 유효한지 확인
execute if data entity @s data.targetuuid run function it:tech/active/ashy_furance/tracking_object/check_target with entity @s data

# 타겟이 없을 경우 지정
execute unless data entity @s data.targetuuid at @s if entity @n[tag=monster,distance=..13] run function it:tech/active/ashy_furance/tracking_object/set_target

# VFX
particle small_flame ~ ~ ~ 0.1 0.1 0.1 0.05 2 force
particle dust{color:[1.000,0.000,0.000],scale:1.5} ~ ~ ~ 0.2 0.2 0.2 1 4 force
particle dust_color_transition{from_color:[1.000,0.000,0.000],to_color:[0.300,0.300,0.300],scale:1.5} ~ ~ ~ 0.2 0.2 0.2 1 2 force