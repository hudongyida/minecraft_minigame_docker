# 실행 인자: 가변 피치 SFX 관련 스코어보드를 가진 엔티티
# 실행 위치: SFX를 재생할 위치 
# $(value)      - 피치 비율을 계산할 스코어보드
# $(max)        - $(value)에 저장된 값이 가질 수 있는 최댓값 스코어보드
# $(function)   - 계산한 피치 값을 이용해 SFX를 재생하는 함수(의 전체 경로)

# 사용 예시: execute as @s at @s run function system:sfx/dynamic_pitch/init {value:item.tome_of_nonlinear_gyro.tick, max:item.tome_of_nonlinear_gyro.max_tick, function:"it:tech/active/tome_of_nonlinear_gyro/sfx"}

data modify storage timeisgold:function_api stack append value {pitch:0d}
$execute as @s run scoreboard players operation @s system.sfx.dynamic_pitch.value = @s $(value)
execute as @s run scoreboard players operation @s system.sfx.dynamic_pitch.value *= #1500 scoreboardConstant
$execute as @s run scoreboard players operation @s system.sfx.dynamic_pitch.value /= @s $(max)
execute as @s run scoreboard players add @s system.sfx.dynamic_pitch.value 500
execute store result storage timeisgold:function_api stack[-1].pitch double 0.001 run scoreboard players get @s system.sfx.dynamic_pitch.value

$execute positioned ~ ~ ~ run function $(function) with storage timeisgold:function_api stack[-1]
data remove storage timeisgold:function_api stack[-1]