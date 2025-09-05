# 테일러 근사를 활용한 sin 값 계산
# 실행 인자: sin(theta) 값을 저장할 엔티티
# $(input)  - sin 값을 계산할 theta 값이 저장된 스코어보드(구간 [0, 3600000], Degree 단위, 10000만큼 곱해짐)
# $(output) - sin 값을 저장할 스코어보드(소숫점 4자리 정확도, 10000만큼 곱해짐)

### 오차 범위: +- 0.002

# 내부적으로는 Radian 단위를 쓰는데, 여기서 변환되니 신경 안 써도 됩니다.
$scoreboard players operation @s system.math.trig.temp = @s $(input)
execute as @s if score @s system.math.trig.temp matches 1800000.. run scoreboard players remove @s system.math.trig.temp 3600000
execute as @s run function system:math/trig/convert/deg2rad {input:"system.math.trig.temp", output:"system.math.trig.input"}
scoreboard players set @s system.math.trig.term 10000

scoreboard players operation @s system.math.trig.temp = @s system.math.trig.input
scoreboard players operation @s system.math.trig.temp *= @s system.math.trig.input
scoreboard players operation @s system.math.trig.temp /= #10000 scoreboardConstant
scoreboard players operation @s system.math.trig.temp *= @s system.math.trig.term
scoreboard players operation @s system.math.trig.temp /= #10000 scoreboardConstant
scoreboard players operation @s system.math.trig.temp /= #110 scoreboardConstant
scoreboard players set @s system.math.trig.term 10000
scoreboard players operation @s system.math.trig.term -= @s system.math.trig.temp

scoreboard players operation @s system.math.trig.temp = @s system.math.trig.input
scoreboard players operation @s system.math.trig.temp *= @s system.math.trig.input
scoreboard players operation @s system.math.trig.temp /= #10000 scoreboardConstant
scoreboard players operation @s system.math.trig.temp *= @s system.math.trig.term
scoreboard players operation @s system.math.trig.temp /= #10000 scoreboardConstant
scoreboard players operation @s system.math.trig.temp /= #72 scoreboardConstant
scoreboard players set @s system.math.trig.term 10000
scoreboard players operation @s system.math.trig.term -= @s system.math.trig.temp

scoreboard players operation @s system.math.trig.temp = @s system.math.trig.input
scoreboard players operation @s system.math.trig.temp *= @s system.math.trig.input
scoreboard players operation @s system.math.trig.temp /= #10000 scoreboardConstant
scoreboard players operation @s system.math.trig.temp *= @s system.math.trig.term
scoreboard players operation @s system.math.trig.temp /= #10000 scoreboardConstant
scoreboard players operation @s system.math.trig.temp /= #42 scoreboardConstant
scoreboard players set @s system.math.trig.term 10000
scoreboard players operation @s system.math.trig.term -= @s system.math.trig.temp

scoreboard players operation @s system.math.trig.temp = @s system.math.trig.input
scoreboard players operation @s system.math.trig.temp *= @s system.math.trig.input
scoreboard players operation @s system.math.trig.temp /= #10000 scoreboardConstant
scoreboard players operation @s system.math.trig.temp *= @s system.math.trig.term
scoreboard players operation @s system.math.trig.temp /= #10000 scoreboardConstant
scoreboard players operation @s system.math.trig.temp /= #20 scoreboardConstant
scoreboard players set @s system.math.trig.term 10000
scoreboard players operation @s system.math.trig.term -= @s system.math.trig.temp

scoreboard players operation @s system.math.trig.temp = @s system.math.trig.input
scoreboard players operation @s system.math.trig.temp *= @s system.math.trig.input
scoreboard players operation @s system.math.trig.temp /= #10000 scoreboardConstant
scoreboard players operation @s system.math.trig.temp *= @s system.math.trig.term
scoreboard players operation @s system.math.trig.temp /= #10000 scoreboardConstant
scoreboard players operation @s system.math.trig.temp /= #6 scoreboardConstant
scoreboard players set @s system.math.trig.term 10000
scoreboard players operation @s system.math.trig.term -= @s system.math.trig.temp

$scoreboard players operation @s $(output) = @s system.math.trig.input
$scoreboard players operation @s $(output) *= @s system.math.trig.term
$scoreboard players operation @s $(output) /= #10000 scoreboardConstant

# 계산 과정 참고
# https://stackoverflow.com/questions/18805627/decode-an-approximation-of-sin-taylor-series