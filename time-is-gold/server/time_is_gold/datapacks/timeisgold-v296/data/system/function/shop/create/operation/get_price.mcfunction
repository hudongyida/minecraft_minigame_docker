# 실행 인자: 상점 마커
# itemPrice NBT에 저장된 아이템 가격을 마커 스코어보드에 저장
# itemPrice NBT가 없을 경우 기본 가격 = (아이템 희귀도 + 1) * 가격 스케일링
# 이렇게 구한 아이템 가격에 아이템 개수를 곱해서 저장

$execute store result score @s system.shop.item_count run data get entity $(itemuuid) Item.count
$execute store result score @s system.shop.item_rarity run data get entity $(itemuuid) Item.components.minecraft:custom_data.itemRarity
scoreboard players add @s system.shop.item_rarity 1

$execute store result score @s system.shop.price run data get entity $(itemuuid) Item.components.minecraft:custom_data.itemPrice
execute unless score @s system.shop.price matches 1.. run scoreboard players operation @s system.shop.item_rarity *= #SYSTEM system.shop.price_scale
execute unless score @s system.shop.price matches 1.. run scoreboard players operation @s system.shop.price = @s system.shop.item_rarity
scoreboard players operation @s system.shop.item_rarity /= #SYSTEM system.shop.price_scale

scoreboard players operation @s system.shop.price *= @s system.shop.item_count

scoreboard players operation @s system.shop.price_display = @s system.shop.price
scoreboard players operation @s system.shop.price_display /= #10 scoreboardConstant