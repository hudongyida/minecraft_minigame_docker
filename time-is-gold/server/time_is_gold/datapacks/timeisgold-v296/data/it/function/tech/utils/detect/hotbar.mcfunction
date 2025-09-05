# 플레이어가 퀵슬롯에 아이템을 보유하고 있는지 감지하는 함수
# 실행 인자: 아이템 감지를 수행할 플레이어
# $(item_tag)   - 아이템 태그
# $(tag)        - 감지 시 부여할 태그

execute as @s[predicate=system:player_dead] run return fail
execute as @s[predicate=system:spectator] run return fail
$execute if items entity @s hotbar.* *[custom_data~{item:$(item_tag)}] at @s run tag @s add $(tag)