# 주어진 Radian 각도를 Degree 각도로 변환하는 함수
# $(input)  - Radian 각도가 저장된 스코어보드 (구간 [0, 62800], 각도 값에 10000만큼 곱해짐)
# $(output) - Degree 각도를 저장할 스코어보드

$scoreboard players operation @s $(output) = @s $(input)
$scoreboard players operation @s $(output) *= #5729 scoreboardConstant
$scoreboard players operation @s $(output) /= #100 scoreboardConstant