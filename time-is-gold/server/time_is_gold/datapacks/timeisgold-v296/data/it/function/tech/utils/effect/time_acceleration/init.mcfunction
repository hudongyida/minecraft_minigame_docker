# 시간 가속 효과의 지속시간 스코어보드를 실행하는 함수.
# 실행 인자: 효과를 적용받을 플레이어어

execute as @s if score @s system.time.stasis matches 1 run return fail
$execute as @s at @s run scoreboard players remove @s $(scoreboard) 1