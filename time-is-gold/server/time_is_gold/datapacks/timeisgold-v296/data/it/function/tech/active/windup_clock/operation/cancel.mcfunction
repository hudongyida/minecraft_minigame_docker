# 실행 인자: 아이템 능력이 취소된 플레이어

data modify storage timeisgold:function_api stack append value {playeruuid:""}
function system:utils/uuid_tokenizer/init
data modify storage timeisgold:function_api stack[-1].playeruuid set from storage timeisgold:uuid_tokenizer output

scoreboard players reset @s item.windup_clock.time_stored
function it:tech/active/windup_clock/reset_ability
function it:tech/active/windup_clock/operation/remove_clock with storage timeisgold:function_api stack[-1]

data remove storage timeisgold:function_api stack[-1]