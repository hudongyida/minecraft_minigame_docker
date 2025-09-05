# 실행 인자: 취약 수치가 0이 아닌 몬스터

$data modify storage timeisgold:function_api stack append value {playerid:$(playerid), value:0}
execute as @s store result storage timeisgold:function_api stack[-1].value double 0.1 run scoreboard players get @s combat.fragility
execute as @s at @s run function system:combat/fragility_damage/apply with storage timeisgold:function_api stack[-1]
data remove storage timeisgold:function_api stack[-1]