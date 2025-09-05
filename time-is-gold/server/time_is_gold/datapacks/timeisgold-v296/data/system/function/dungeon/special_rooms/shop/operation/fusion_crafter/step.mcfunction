# 잠긴 슬롯에 아이템 배치 차단
# 슬롯 1, 6, 8에 아이템이 있는 경우 합성
# 아이템 희귀도 계산 + 아이템 생성

# 잠긴 슬롯 활성화 방지
data modify block ~ ~ ~ disabled_slots set value [I;0,2,3,4,5,7]

# 잠긴 슬롯에 아이템이 있는 경우 처리
execute if items block ~ ~ ~ container.* * unless items block ~ ~ ~ container.1 * unless items block ~ ~ ~ container.6 * unless items block ~ ~ ~ container.8 * at @s run function system:dungeon/special_rooms/shop/operation/fusion_crafter/disabled_slot_exception

# 블랙리스트 아이템이 투입된 경우 처리
execute at @s run function system:dungeon/special_rooms/shop/operation/fusion_crafter/blacklist_check

# 슬롯 1, 6, 8에 아이템이 있다면 합성
execute if items block ~ ~ ~ container.1 * if items block ~ ~ ~ container.6 * if items block ~ ~ ~ container.8 * run function system:dungeon/special_rooms/shop/operation/fusion_crafter/fuse_item/init