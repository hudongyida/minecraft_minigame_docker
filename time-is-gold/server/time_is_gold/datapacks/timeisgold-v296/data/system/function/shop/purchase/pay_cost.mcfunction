# 실행 인자: 상점 마커
# $(playeruuid) - 아이템 구매를 시도한 플레이어의 UUID Token
# $(itemuuid)   - 진열된 아이템의 UUID Token

scoreboard players reset @s system.shop.cost_paid

# type == 0 -> 일반 상점
$execute if score @s system.shop.type matches 0 unless score @s system.shop.price < $(playeruuid) timeX10 as $(playeruuid) run title @s actionbar {"translate": "dungeon.special_rooms.shop.notify.not_enough_time"}
$execute if score @s system.shop.type matches 0 unless score @s system.shop.price < $(playeruuid) timeX10 as $(playeruuid) at @s run playsound minecraft:entity.enderman.teleport hostile @s ~ ~ ~ 0.5 0.5 0.5

$execute if score @s system.shop.type matches 0 if score @s system.shop.price < $(playeruuid) timeX10 run scoreboard players set @s system.shop.cost_paid 1
$execute if score @s system.shop.type matches 0 if score @s system.shop.price < $(playeruuid) timeX10 run scoreboard players operation $(playeruuid) timeX10 -= @s system.shop.price

# type == 1 -> 시간 상점
$execute if score @s system.shop.type matches 1 unless score @s system.shop.price < $(playeruuid) timeX10 as $(playeruuid) run title @s actionbar {"translate": "dungeon.special_rooms.shop.notify.not_enough_time"}
$execute if score @s system.shop.type matches 1 unless score @s system.shop.price < $(playeruuid) timeX10 as $(playeruuid) at @s run playsound minecraft:entity.enderman.teleport hostile @s ~ ~ ~ 0.5 0.5 0.5

$execute if score @s system.shop.type matches 1 if score @s system.shop.price < $(playeruuid) timeX10 run scoreboard players set @s system.shop.cost_paid 1
$execute if score @s system.shop.type matches 1 if score @s system.shop.price < $(playeruuid) timeX10 run scoreboard players operation $(playeruuid) timeX10 -= @s system.shop.price


# 구매 성공
$execute if score @s system.shop.cost_paid matches 1 as $(playeruuid) run tellraw @s [{"text":"你购买了 ","color":"yellow"}, {"nbt":"Item.components.minecraft:custom_name","entity":"$(itemuuid)","interpret":true}]

# SFX
$execute if score @s system.shop.cost_paid matches 1 as $(playeruuid) at @s run playsound minecraft:block.note_block.pling block @s ~ ~ ~ 0.5 2 0.5