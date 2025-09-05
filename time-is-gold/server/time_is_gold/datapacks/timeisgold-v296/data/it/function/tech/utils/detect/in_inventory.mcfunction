# 인벤토리 감지 함수
# 실행 인자: 아이템을 감지할 플레이어
# $(item)       - 아이템 ID
# $(output)        - 감지 시 부여할 태그

execute as @s[predicate=system:player_dead] run return fail
execute as @s[predicate=system:spectator] run return fail
$execute if items entity @s container.* *[minecraft:custom_data~{item:$(item)}] run tag @s add $(output)
$execute if items entity @s weapon.offhand *[minecraft:custom_data~{item:$(item)}] run tag @s add $(output)