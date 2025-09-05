# 주어진 Degree 각도를 Radian 각도로 변환하는 함수
# $(input)  - Degree 각도가 저장된 스코어보드 (구간 [0, 3600000], 각도 값에 10000만큼 곱해짐)
# $(output) - Radian 각도를 저장할 스코어보드

$scoreboard players operation @s $(output) = @s $(input)
$scoreboard players operation @s $(output) *= #175 scoreboardConstant
$scoreboard players operation @s $(output) /= #10000 scoreboardConstant

# Debug
#$tellraw @s [{"text":"deg2rad output: "},{"score":{"name":"@s","objective":"$(output)"}}]