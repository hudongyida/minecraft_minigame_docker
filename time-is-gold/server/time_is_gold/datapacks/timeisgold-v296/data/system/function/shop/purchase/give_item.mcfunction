# 실행 인자: 상점 마커

# 20240711 - give 명령어 구조가 바뀌면서 저장된 데이터로부터 매크로 기능을 못 쓰게 된 관계로, pickupdelay가 0인 아이템 엔티티를 소환하는 식으로 바꿨습니다.

#$execute as @s run give @s $(id)[minecraft:lore=$(lore), minecraft:custom_name='$(custom_name)', minecraft:custom_data='$(custom_data)'] $(count)

$execute as $(playeruuid) at @s run summon item ~ ~ ~ {PickupDelay:32767s, Owner:$(playeruuidlist), Tags:[system.shop.item.purchased.$(selfuuid)], Item:{id:"minecraft:stone", count:1b}}

$execute as @s at $(playeruuid) run data modify entity @n[type=item,tag=system.shop.item.purchased.$(selfuuid),distance=..0.5] Item set from entity @s data.itemdata
$execute as @s at $(playeruuid) run data modify entity @n[type=item,tag=system.shop.item.purchased.$(selfuuid),distance=..0.5] PickupDelay set value 0s