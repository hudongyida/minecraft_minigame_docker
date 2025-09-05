# 슬롯 감지 함수
# 실행 인자: 아이템 감지를 수행할 플레이어
# $(item_tag)   - 아이템 태그
# $(slot)       - 퀵슬롯 번호
# $(tag)        - 감지 시 부여할 태그

# 형식: function it:tech/utils/detect/slot {item_tag:, slot:, tag:}

execute as @s[predicate=system:player_dead] run return fail
execute as @s[predicate=system:spectator] run return fail
$execute if items entity @s container.$(slot) *[custom_data~{item:$(item_tag)}] at @s run tag @s add $(tag)

# 플레이스홀더 예외처리
$execute if score @s item.placeholder.active matches 1.. run function it:tech/passive/placeholder/inventory_check {slot:$(slot), item_tag:$(item_tag), tag:$(tag)}