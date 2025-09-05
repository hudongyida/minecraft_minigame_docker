# 실행 인자: 중력의 영향을 받는 몬스터
# $(selfuuid)   - 중력 중심 마커 UUID Token

$function system:math/vectors/entity_direction/init {storage_x:item.tome_of_nonlinear_gyro.motion_x, storage_y:item.tome_of_nonlinear_gyro.motion_y, storage_z:item.tome_of_nonlinear_gyro.motion_z, targetuuid:"$(selfuuid)"}
execute store result entity @s Motion[0] double 0.025 run scoreboard players get @s item.tome_of_nonlinear_gyro.motion_x
execute store result entity @s Motion[1] double 0.025 run scoreboard players get @s item.tome_of_nonlinear_gyro.motion_y
execute store result entity @s Motion[2] double 0.025 run scoreboard players get @s item.tome_of_nonlinear_gyro.motion_z