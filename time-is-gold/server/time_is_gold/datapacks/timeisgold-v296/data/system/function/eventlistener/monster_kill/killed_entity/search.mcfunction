# 실행 인자: 몬스터를 처치한 플레이어

data modify storage timeisgold:function_api stack append value {monsteruuid:""}
function monsters:tech/global/entity_database/query/pop/init
data modify storage timeisgold:function_api stack[-1].monsteruuid set from storage timeisgold:entity_database output.uuid

function system:eventlistener/monster_kill/killed_entity/execute_on_entity with storage timeisgold:function_api stack[-1]

data remove storage timeisgold:function_api stack[-1]