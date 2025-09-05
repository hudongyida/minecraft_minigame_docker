### 주의 - 방 크기 27x27, 문 사이 거리 5에 하드코딩 되어 있음.

# 작업 순서
# 1. 플레이어와 상호작용한 인터랙션 체크
# 2. 방 ID 할당
# 3. 방 내부 작업 위치 확인 후 실행
# 4. 방 문이 열렸을 때 실행되는 아이템 능력 실행
# 5. 열린 문 위치에 마커 소환 및 인터랙션 삭제

execute as @e[type=interaction,tag=dungeon.door,tag=!dungeon.door.locked] if function system:utils/interaction/interaction_check at @s run function system:dungeon/doors/operation/open_init
execute as @e[type=interaction,tag=dungeon.door,tag=dungeon.door.locked] if function system:utils/interaction/interaction_check run function system:dungeon/doors/operation/failed_init

# 소환된 마커에 방 ID 할당 및 operation_pos 갑옷 거치대에 전달
execute as @e[type=marker,tag=dungeon.marker.check.pre] at @s run function system:dungeon/doors/operation/set_id

# 방 내부 확인된 마커 위치에서 기능 실행
execute as @e[type=armor_stand,tag=dungeon.operation_check] at @s run function system:dungeon/doors/operation_pos

# 방 문을 열었을 때 동작하는 아이템 능력 실행
execute as @e[type=marker,tag=dungeon.marker.check] at @s run function system:dungeon/doors/door_abilities with entity @s data

# 방 입구 위치에 마커 소환(추락한 플레이어 tp용)
execute as @e[type=interaction,tag=dungeon.door.open] at @s if entity @s align xyz positioned ~0.5 ~0.5 ~0.5 run summon marker ^ ^ ^ {Tags:[dungeon.room.entrance]}
execute as @e[type=interaction,tag=dungeon.door.open] at @s if entity @s align xyz positioned ~0.5 ~0.5 ~0.5 as @n[type=marker,tag=dungeon.room.entrance,distance=..0.5] at @s rotated as @n[type=interaction,tag=dungeon.door.open.opposite] run tp @s ~ ~ ~ ~ ~

execute as @e[type=interaction,tag=dungeon.door.open.opposite] at @s if entity @s align xyz positioned ~0.5 ~0.5 ~0.5 run summon marker ^ ^ ^ {Tags:[dungeon.room.entrance]}
execute as @e[type=interaction,tag=dungeon.door.open.opposite] at @s if entity @s align xyz positioned ~0.5 ~0.5 ~0.5 as @n[type=marker,tag=dungeon.room.entrance,distance=..0.5] at @s rotated as @n[type=interaction,tag=dungeon.door.open] run tp @s ~ ~ ~ ~ ~

# 문 삭제
execute as @e[type=interaction,tag=dungeon.door.open] at @s run function system:dungeon/doors/operation/remove_door
execute as @e[type=interaction,tag=dungeon.door.open.opposite] at @s run function system:dungeon/doors/operation/remove_door

# debug
#execute as @e[tag=dungeon.marker.check] at @s run particle angry_villager ~ ~1 ~ 0 0 0 1 0 force