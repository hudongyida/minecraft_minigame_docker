# 아이템 합성 결과 희귀도를 계산해 반환하는 함수.

execute store result score @s dungeon.special_rooms.shop.fusion_crafter.rarity.0 run data get block ~ ~ ~ Items[0].components."minecraft:custom_data".itemRarity
execute store result score @s dungeon.special_rooms.shop.fusion_crafter.rarity.1 run data get block ~ ~ ~ Items[1].components."minecraft:custom_data".itemRarity
execute store result score @s dungeon.special_rooms.shop.fusion_crafter.rarity.2 run data get block ~ ~ ~ Items[2].components."minecraft:custom_data".itemRarity

scoreboard players reset @s dungeon.special_rooms.shop.fusion_crafter.rarity.max
scoreboard players operation @s dungeon.special_rooms.shop.fusion_crafter.rarity.max > @s dungeon.special_rooms.shop.fusion_crafter.rarity.0
scoreboard players operation @s dungeon.special_rooms.shop.fusion_crafter.rarity.max > @s dungeon.special_rooms.shop.fusion_crafter.rarity.1
scoreboard players operation @s dungeon.special_rooms.shop.fusion_crafter.rarity.max > @s dungeon.special_rooms.shop.fusion_crafter.rarity.2

# 5% 확률로 최대 희귀도 + 1 후 반환
execute if predicate it:5pc run return run scoreboard players add @s dungeon.special_rooms.shop.fusion_crafter.rarity.max 1

scoreboard players operation @s dungeon.special_rooms.shop.fusion_crafter.temp = @s dungeon.special_rooms.shop.fusion_crafter.rarity.0
scoreboard players operation @s dungeon.special_rooms.shop.fusion_crafter.temp += @s dungeon.special_rooms.shop.fusion_crafter.rarity.1
scoreboard players operation @s dungeon.special_rooms.shop.fusion_crafter.temp += @s dungeon.special_rooms.shop.fusion_crafter.rarity.2

scoreboard players operation @s dungeon.special_rooms.shop.fusion_crafter.rarity.quotient = @s dungeon.special_rooms.shop.fusion_crafter.temp
scoreboard players operation @s dungeon.special_rooms.shop.fusion_crafter.rarity.quotient /= #3 scoreboardConstant

scoreboard players operation @s dungeon.special_rooms.shop.fusion_crafter.rarity.modulo = @s dungeon.special_rooms.shop.fusion_crafter.temp
scoreboard players operation @s dungeon.special_rooms.shop.fusion_crafter.rarity.modulo %= #3 scoreboardConstant

execute store result score @s dungeon.special_rooms.shop.fusion_crafter.randomizer run random value 0..2
execute if score @s dungeon.special_rooms.shop.fusion_crafter.randomizer < @s dungeon.special_rooms.shop.fusion_crafter.rarity.modulo run scoreboard players add @s dungeon.special_rooms.shop.fusion_crafter.rarity.quotient 1

return run scoreboard players get @s dungeon.special_rooms.shop.fusion_crafter.rarity.quotient