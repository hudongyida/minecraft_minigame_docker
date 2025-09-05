# 블랙리스트 아이템이 투입되었는지 확인하는 함수
# 실행 인자: @e[type=marker,tag=dungeon.special_rooms.shop.fusion_crafter.marker.manager]

# 소모품 아이템 체크
execute if items block ~ ~ ~ container.* *[custom_data~{itemType:4}] run tag @s add dungeon.special_rooms.shop.fusion_crafter.blacklist_check
execute if items block ~ ~ ~ container.* *[custom_data~{itemType:4b}] run tag @s add dungeon.special_rooms.shop.fusion_crafter.blacklist_check

# 스펠렁커 체크
execute if items block ~ ~ ~ container.* *[custom_data~{item:spelunker}] run tag @s add dungeon.special_rooms.shop.fusion_crafter.blacklist_check

# 텔레포트 아이템 체크
execute if items block ~ ~ ~ container.* *[custom_data~{item:teleport_to_shop}] run tag @s add dungeon.special_rooms.shop.fusion_crafter.blacklist_check

execute if entity @s[tag=dungeon.special_rooms.shop.fusion_crafter.blacklist_check] run function system:dungeon/special_rooms/shop/operation/fusion_crafter/blacklisted_item_exception
tag @s[tag=dungeon.special_rooms.shop.fusion_crafter.blacklist_check] remove dungeon.special_rooms.shop.fusion_crafter.blacklist_check