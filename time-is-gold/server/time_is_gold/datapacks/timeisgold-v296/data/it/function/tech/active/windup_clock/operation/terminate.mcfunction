# 실행 인자: 태엽시계 능력이 종료된 플레이어

data modify storage timeisgold:function_api stack append value {playeruuid:""}
function system:utils/uuid_tokenizer/init
data modify storage timeisgold:function_api stack[-1].playeruuid set from storage timeisgold:uuid_tokenizer output

scoreboard players operation @s timeX10 = @s item.windup_clock.time_stored
function it:tech/active/windup_clock/operation/clock/teleport with storage timeisgold:function_api stack[-1]
function it:tech/active/windup_clock/operation/remove_clock with storage timeisgold:function_api stack[-1]
function it:tech/active/windup_clock/reset_ability

data remove storage timeisgold:function_api stack[-1]
tag @s[tag=item.windup_clock.use] remove item.windup_clock.use