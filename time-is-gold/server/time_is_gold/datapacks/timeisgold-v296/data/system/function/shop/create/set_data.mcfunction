# 실행 인자: system.shop.marker.storage.uninitialized 태그가 있는 마커
# $(type)   - 상점 유형
# $(stock)  - 최대 판매 가능한 아이템 수(-1: 무제한)

function system:utils/uuid_tokenizer/init
data modify entity @s data.selfuuid set from storage timeisgold:uuid_tokenizer output

$scoreboard players set @s system.shop.type $(type)
$scoreboard players set @s system.shop.stock $(stock)

# 엔티티 소환 및 마커에 UUID Token 저장
execute positioned ~ ~ ~ run function system:shop/create/operation/summon_interaction with entity @s data
execute positioned ~ ~ ~ run function system:shop/create/operation/summon_item with entity @s data
execute positioned ~ ~ ~ run function system:shop/create/operation/summon_text with entity @s data

# 상점 관련 엔티티 데이터 설정
function system:shop/create/operation/get_price with entity @s data
function system:shop/create/operation/modify_text with entity @s data

tag @s remove system.shop.marker.storage.uninitialized