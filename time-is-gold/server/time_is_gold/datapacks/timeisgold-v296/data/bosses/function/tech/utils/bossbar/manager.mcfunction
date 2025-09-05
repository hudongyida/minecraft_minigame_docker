# 실행 인자: 보스 개체
# $(function)   - 실행할 보스바 관리 함수
# $(id)         - 보스바 분류 ID(엔티티 하나가 보스 바 여러 개를 쓸 경우 사용, 기본값 0)

# 생성되는 보스바의 식별자(=$(bossbarid))는 $(보스 개체 UUID)-$(id) 형식으로 설정됩니다.

data modify storage timeisgold:function_api stack append value {id:0}
$data modify storage timeisgold:function_api stack[-1].id set value $(id)

execute as @s on passengers as @s[type=marker] run data modify storage timeisgold:function_api stack[-1].uuid set from entity @s data.bossuuid
execute unless data storage timeisgold:function_api stack[-1].uuid run function system:utils/uuid_tokenizer/init
execute unless data storage timeisgold:function_api stack[-1].uuid run data modify storage timeisgold:function_api stack[-1].uuid set from storage timeisgold:uuid_tokenizer output
function bosses:tech/utils/bossbar/set_bossbar_id with storage timeisgold:function_api stack[-1]
$execute as @s run function $(function) with storage timeisgold:function_api stack[-1]

data remove storage timeisgold:function_api stack[-1]