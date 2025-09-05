# 보급상자 방의 마커 위치에 루트 테이블이 채워진 상자를 배치하는 함수
# 실행 인자: @e[type=armor_stand,tag=dungeon.operation_check,tag=dungeon.supply_chest_pos]
# 실행 함수: system:dungeon/doors/operation_pos.mcfunction

execute at @s rotated as @s facing entity @n[type=interaction,tag=dungeon.door.open.opposite] eyes run rotate @s ~ 0
execute store result score @s dungeon.special_rooms.chest.direction run function system:utils/facing_direction/init

# 상자 설치
execute at @s if score @s dungeon.special_rooms.chest.direction matches 0 run setblock ~ ~ ~ chest[facing=south]{LootTable:"system:chest/supply"}
execute at @s if score @s dungeon.special_rooms.chest.direction matches 1 run setblock ~ ~ ~ chest[facing=west]{LootTable:"system:chest/supply"}
execute at @s if score @s dungeon.special_rooms.chest.direction matches 2 run setblock ~ ~ ~ chest[facing=north]{LootTable:"system:chest/supply"}
execute at @s if score @s dungeon.special_rooms.chest.direction matches 3 run setblock ~ ~ ~ chest[facing=east]{LootTable:"system:chest/supply"}

# 루트 테이블 설정
data modify block ~ ~ ~ CustomName set value {"text":"战利品宝箱","color":"dark_gray"}