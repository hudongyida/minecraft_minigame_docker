# admin:reset 함수 실행 시 제거되어야 하는 엔티티 삭제

# 보스 제거
kill @e[tag=monster]
kill @e[tag=boss]

# 터렛 제거
kill @e[tag=monster,tag=turret]

# 발사체 제거
kill @e[type=#minecraft:impact_projectiles]

# 상점 제거
kill @e[type=item,tag=system.shop.item.showcase]
kill @e[type=text_display,tag=system.shop.text_display.item_name]
kill @e[type=text_display,tag=system.shop.text_display.item_price]
kill @e[type=armor_stand,tag=system.shop.armor_stand.loot_storage]
kill @e[type=interaction,tag=system.shop.interaction]
kill @e[type=marker,tag=system.shop.marker.storage]

# 액티브 아이템 디스플레이 제거
kill @e[tag=item.automaton_turret]
kill @e[tag=item.surprise_dice.dice]

# 디스플레이 등 기타 엔티티 제거
execute as @e[tag=admin.kill_on_reset] run kill @s
execute as @e[tag=monster.ally] run kill @s

# 스토리지 초기화
data remove storage timeisgold:random shuffle_range