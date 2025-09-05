# 실행 인자: 아이템 능력을 사용한 플레이어

data modify storage timeisgold:function_api stack append value {playeruuid:""}
function system:utils/uuid_tokenizer/init
data modify storage timeisgold:function_api stack[-1].playeruuid set from storage timeisgold:uuid_tokenizer output

scoreboard players operation @s item.windup_clock.time_stored = @s timeX10
execute at @s run function it:tech/active/windup_clock/operation/clock/summon with storage timeisgold:function_api stack[-1]

data remove storage timeisgold:function_api stack[-1]