# 삼차함수 근사를 이용한 arctan(x) 계산
# 실행 인자: arctan(x) 값을 저장할 엔티티
# $(input)  - arctan 값을 계산할 x 값이 저장된 스코어보드(10000만큼 곱해짐)
# $(output) - arctan 값을 저장할 스코어보드(소숫점 4자리 정확도, Degree 단위, 10000만큼 곱해짐)

# arctan(x) = pi/2 - arctan(1/x)
# arctan(-x) = -arctan(x)

$scoreboard players operation @s system.math.trig.input = @s $(input)
scoreboard players set @s system.math.trig.arctan.inv_check 0
scoreboard players set @s system.math.trig.arctan.sign_check 0
execute as @s if score @s system.math.trig.input matches ..0 run scoreboard players set @s system.math.trig.arctan.sign_check 1
execute as @s if score @s system.math.trig.input matches ..0 run scoreboard players operation @s system.math.trig.input *= -1 scoreboardConstant

execute as @s if score @s system.math.trig.input matches 10001.. run scoreboard players set @s system.math.trig.arctan.inv_check 1
execute as @s if score @s system.math.trig.arctan.inv_check matches 1.. run scoreboard players operation @s system.math.trig.temp = @s system.math.trig.input
execute as @s if score @s system.math.trig.arctan.inv_check matches 1.. run scoreboard players set @s system.math.trig.input 100000000
execute as @s if score @s system.math.trig.arctan.inv_check matches 1.. run scoreboard players operation @s system.math.trig.input /= @s system.math.trig.temp

scoreboard players operation @s system.math.trig.temp = @s system.math.trig.input
scoreboard players operation @s system.math.trig.temp *= @s system.math.trig.input
scoreboard players operation @s system.math.trig.temp /= #10000 scoreboardConstant

scoreboard players operation @s system.math.trig.term = @s system.math.trig.temp
scoreboard players operation @s system.math.trig.term /= #10000 scoreboardConstant
scoreboard players operation @s system.math.trig.term *= #7607 scoreboardConstant
scoreboard players operation @s system.math.trig.term /= #100000 scoreboardConstant
scoreboard players remove @s system.math.trig.term 2854

scoreboard players operation @s system.math.trig.term *= @s system.math.trig.temp
scoreboard players operation @s system.math.trig.term /= #10000 scoreboardConstant
scoreboard players add @s system.math.trig.term 9947

scoreboard players operation @s system.math.trig.term *= @s system.math.trig.input
scoreboard players operation @s system.math.trig.term /= #10000 scoreboardConstant

execute as @s if score @s system.math.trig.arctan.inv_check matches 1.. run scoreboard players operation @s system.math.trig.temp = @s system.math.trig.term
execute as @s if score @s system.math.trig.arctan.inv_check matches 1.. run scoreboard players set @s system.math.trig.term 15708
execute as @s if score @s system.math.trig.arctan.inv_check matches 1.. run scoreboard players operation @s system.math.trig.term -= @s system.math.trig.temp
execute as @s if score @s system.math.trig.arctan.sign_check matches 1.. run scoreboard players operation @s system.math.trig.term *= -1 scoreboardConstant

$execute as @s run function system:math/trig/convert/rad2deg {input:"system.math.trig.term", output:"$(output)"}

# 근사식 참고:
# https://stackoverflow.com/questions/42537957/fast-accurate-atan-arctan-approximation-algorithm
# float atan_abs3(float x) {
#   const float a[3] = { //
#       0.994766756708199f, -2.8543851807526100E-01f, 0.0760699247645105f};
#   float xx = x * x;
#   return ((a[2] * xx + a[1]) * xx + a[0]) * x;
# }