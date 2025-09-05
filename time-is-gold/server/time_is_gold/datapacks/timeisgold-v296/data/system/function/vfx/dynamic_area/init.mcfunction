# 실행 인자: 가변 영역 파티클 관련 스코어보드를 가진 엔티티
# 실행 위치: VFX를 재생할 중심 위치
# $(value)          - 영역 비율을 계산할 스코어보드
# $(max)            - $(value)에 저장된 값이 가질 수 있는 최댓값 스코어보드
# $(function)       - 계산한 비율 값을 이용해 VFX를 재생하는 함수(의 전체 경로)
# $(x), $(y), $(z)  - $(value) == $(max)일 때 X, Y, Z 범위


# 사용 예시: execute as @s at @s run function system:sfx/dynamic_pitch/init {value:item.tome_of_nonlinear_gyro.tick, max:item.tome_of_nonlinear_gyro.max_tick, function:"it:tech/active/tome_of_nonlinear_gyro/sfx"}

data modify storage timeisgold:function_api stack append value {dx:0d, dy:0d, dz:0d}
$execute as @s run scoreboard players operation @s system.vfx.dynamic_area.value = @s $(value)
execute as @s run scoreboard players operation @s system.vfx.dynamic_area.value *= #1000 scoreboardConstant
$execute as @s run scoreboard players operation @s system.vfx.dynamic_area.value /= @s $(max)
$execute store result storage timeisgold:function_api stack[-1].dx double $(x) run scoreboard players get @s system.vfx.dynamic_area.value
$execute store result storage timeisgold:function_api stack[-1].dy double $(y) run scoreboard players get @s system.vfx.dynamic_area.value
$execute store result storage timeisgold:function_api stack[-1].dz double $(z) run scoreboard players get @s system.vfx.dynamic_area.value
execute store result storage timeisgold:function_api stack[-1].dx double 0.001 run data get storage timeisgold:function_api stack[-1].dx
execute store result storage timeisgold:function_api stack[-1].dy double 0.001 run data get storage timeisgold:function_api stack[-1].dy
execute store result storage timeisgold:function_api stack[-1].dz double 0.001 run data get storage timeisgold:function_api stack[-1].dz

$execute positioned ~ ~ ~ run function $(function) with storage timeisgold:function_api stack[-1]
data remove storage timeisgold:function_api stack[-1]