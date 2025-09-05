# 아이템 합성 결과 아이템 종류를 계산해 반환하는 함수.

execute store result score @s dungeon.special_rooms.shop.fusion_crafter.type.0 run data get block ~ ~ ~ Items[0].components."minecraft:custom_data".itemType
execute store result score @s dungeon.special_rooms.shop.fusion_crafter.type.1 run data get block ~ ~ ~ Items[1].components."minecraft:custom_data".itemType
execute store result score @s dungeon.special_rooms.shop.fusion_crafter.type.2 run data get block ~ ~ ~ Items[2].components."minecraft:custom_data".itemType

scoreboard players reset @s dungeon.special_rooms.shop.fusion_crafter.type.check
execute if score @s dungeon.special_rooms.shop.fusion_crafter.type.0 = @s dungeon.special_rooms.shop.fusion_crafter.type.1 run scoreboard players add @s dungeon.special_rooms.shop.fusion_crafter.type.check 1
execute if score @s dungeon.special_rooms.shop.fusion_crafter.type.0 = @s dungeon.special_rooms.shop.fusion_crafter.type.2 run scoreboard players add @s dungeon.special_rooms.shop.fusion_crafter.type.check 1
execute if score @s dungeon.special_rooms.shop.fusion_crafter.type.1 = @s dungeon.special_rooms.shop.fusion_crafter.type.2 run scoreboard players add @s dungeon.special_rooms.shop.fusion_crafter.type.check 1

# 아이템 3개의 종류가 모두 같을 경우
execute if score @s dungeon.special_rooms.shop.fusion_crafter.type.check matches 3 run return run scoreboard players get @s dungeon.special_rooms.shop.fusion_crafter.type.0

execute store result score @s dungeon.special_rooms.shop.fusion_crafter.type.check run random value 0..3
return run scoreboard players get @s dungeon.special_rooms.shop.fusion_crafter.type.check