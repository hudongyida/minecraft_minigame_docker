# 게임 시작 시 보급 상자를 생성하는 함수.
# 실행 인자: @e[type=armor_stand,tag=dungeon.entrance_supply_chest_pos]

rotate @s facing entity @n[type=interaction,tag=dungeon.door] eyes
execute rotated as @s run rotate @s ~180 ~
execute store result score @s dungeon.special_rooms.chest.direction run function system:utils/facing_direction/init

# 상자 설치
execute at @s if score @s dungeon.special_rooms.chest.direction matches 0 run setblock ~ ~ ~ chest[facing=south]{LootTable:"system:chest/entrance"}
execute at @s if score @s dungeon.special_rooms.chest.direction matches 1 run setblock ~ ~ ~ chest[facing=west]{LootTable:"system:chest/entrance"}
execute at @s if score @s dungeon.special_rooms.chest.direction matches 2 run setblock ~ ~ ~ chest[facing=north]{LootTable:"system:chest/entrance"}
execute at @s if score @s dungeon.special_rooms.chest.direction matches 3 run setblock ~ ~ ~ chest[facing=east]{LootTable:"system:chest/entrance"}

# 루트 테이블 설정
data modify block ~ ~ ~ CustomName set value {"translate": "dungeon.special_rooms.entrance.supply_chest.name"}
data modify block ~ ~ ~ LootTable set value "system:chest/entrance"