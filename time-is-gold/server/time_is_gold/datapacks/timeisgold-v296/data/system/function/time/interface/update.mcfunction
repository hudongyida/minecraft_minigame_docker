# XP 레벨을 시간으로 설정하는 함수.
# 실행 인자: 플레이어

xp set @s 1000 levels

data modify storage timeisgold:function_api stack append value {level:0, point:0}

execute store result storage timeisgold:function_api stack[-1].level int 1 run scoreboard players get @s system.time.display_integer
function system:time/interface/set_xp_bar with storage timeisgold:function_api stack[-1]

data remove storage timeisgold:function_api stack[-1]