# 실행 인자: entityid를 부여받은 엔티티
# 데이터 -> {uuid: ""}

data modify storage timeisgold:function_api stack append value {id:0, data:{uuid:""}}

execute store result storage timeisgold:function_api stack[-1].id int 1 run scoreboard players get @s entityid
function system:utils/uuid_tokenizer/init
data modify storage timeisgold:function_api stack[-1].data.uuid set from storage timeisgold:uuid_tokenizer output

function monsters:tech/global/entity_database/query/add/operation with storage timeisgold:function_api stack[-1]

data remove storage timeisgold:function_api stack[-1]