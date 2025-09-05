# 방 문을 연 후 방 안의 위치 마커에서 각 기능을 실행하는 함수
# 실행 인자: @e[type=armor_stand,tag=dungeon.operation_check]

### 주의! - 이 함수가 실행되는 시점에는 dungeon.door.open, dungeon.door.open.opposite 인터랙션이 아직 존재합니다.
### 또한, 이 함수가 실행되는 시점에는 아직 방 입구 마커가 존재하지 않습니다.

# 몬스터 소환 마커
execute as @s[tag=dungeon.summon_pos] at @s run function monsters:summon/init

# 보스전 관리 마커
# system:dungeon/boss_arena/init 함수에서 실행됨.

### - - - - - - - - - - -

# 지뢰찾기 마커
execute as @s[tag=dungeon.minesweeper_reward_pos] at @s run function system:dungeon/special_rooms/minesweeper/reward_display/init
execute as @s[tag=dungeon.minesweeper_pos] at @s run function system:dungeon/special_rooms/minesweeper/create/init

# 암시장 마커
execute as @s[tag=dungeon.black_market_npc_pos] at @s run function system:dungeon/special_rooms/black_market/place_npc
execute as @s[tag=dungeon.black_market_shop_pos] at @s run function system:dungeon/special_rooms/black_market/place_shop

# 상자 방 마커
execute as @s[tag=dungeon.loot_chest_pos] at @s run function system:dungeon/special_rooms/chest/init

# 보스 포탈 마커
execute as @s[tag=dungeon.boss_portal_pos] at @s run function system:dungeon/special_rooms/boss_portal/init
execute as @s[tag=dungeon.boss_portal_teleport_pos] at @s run function system:dungeon/special_rooms/boss_portal/portal_teleport_init

# 다음 층 포탈 마커
execute as @s[tag=dungeon.next_floor_portal_pos] at @s run function system:dungeon/special_rooms/next_floor_portal/init

# 상점 방 마커
execute as @s[tag=dungeon.shop_arrow_pos] at @s run function system:dungeon/special_rooms/shop/place/arrow
execute as @s[tag=dungeon.shop_gunpowder_pos] at @s run function system:dungeon/special_rooms/shop/place/gunpowder
execute as @s[tag=dungeon.shop_uranium_ingot_pos] at @s run function system:dungeon/special_rooms/shop/place/uranium_ingot
execute as @s[tag=dungeon.shop_time_droplet_pos] at @s run function system:dungeon/special_rooms/shop/place/time_droplet
execute as @s[tag=dungeon.shop_time_crystal_pos] at @s run function system:dungeon/special_rooms/shop/place/time_crystal
execute as @s[tag=dungeon.shop_time_cluster_pos] at @s run function system:dungeon/special_rooms/shop/place/time_cluster
execute as @s[tag=dungeon.shop_item_pos] at @s run function system:dungeon/special_rooms/shop/place/item
execute as @s[tag=dungeon.shop_expendables_pos] at @s run function system:dungeon/special_rooms/shop/place/expendables
execute as @s[tag=dungeon.shop_item_fusion_pos] at @s run function system:dungeon/special_rooms/shop/place/fusion_crafter

# 조용한 숲 마커
execute as @s[tag=dungeon.quiet_forest_npc_pos] at @s run function system:dungeon/special_rooms/quiet_forest/place_npc
execute as @s[tag=dungeon.quiet_forest_shop_pos] at @s run function system:dungeon/special_rooms/quiet_forest/place_shop

# 보급 상자 마커
execute as @s[tag=dungeon.supply_chest_pos] at @s run function system:dungeon/special_rooms/supply/init

### - - - - - - - - - - -

kill @s