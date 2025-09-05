# 왼손에 든 아이템 감지 함수
# 실행 인자: 없음.
# $(item_tag)   - 아이템 태그
# $(tag)        - 감지 시 부여할 태그

#형식: function it:tech/utils/detect/held_offhand {item_tag:, tag:}

execute as @s[predicate=system:player_dead] run return fail
execute as @s[predicate=system:spectator] run return fail
$execute as @a if items entity @s weapon.offhand *[custom_data~{item:$(item_tag)}] run tag @s add $(tag)