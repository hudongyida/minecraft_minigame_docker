# 실행 인자: pull 동작을 수행하는 하이퍼리트랙터 마커
# 대상 구하기
data modify storage timeisgold:function_api stack append value {targetuuid:""}

function system:utils/uuid_tokenizer/init
data modify storage timeisgold:function_api stack[-1].targetuuid set from storage timeisgold:uuid_tokenizer output
execute at @s as @e[tag=monster,distance=..8] run function it:tech/active/hyperretractor/operation/set_motion with storage timeisgold:function_api stack[-1]

data remove storage timeisgold:function_api stack[-1]