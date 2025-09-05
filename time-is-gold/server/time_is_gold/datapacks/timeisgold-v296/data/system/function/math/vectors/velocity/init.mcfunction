# 현재 엔티티의 속도 벡터 계산
# $(x), $(y), $(z)  - 벡터의 X, Y, Z 성분을 저장할 스코어보드 변수(100만큼 곱해져서 저장됨)

$execute as @s store result score @s $(x) run data get entity @s Motion[0] 100
$execute as @s store result score @s $(y) run data get entity @s Motion[1] 100
$execute as @s store result score @s $(z) run data get entity @s Motion[2] 100