# 판매할 아이템을 결정 및 소환하는 함수.
# 실행 인자: 상점 마커

$summon armor_stand ~ ~ ~ {Tags:[system.shop.armor_stand.loot_storage, system.shop.$(selfuuid)], Invisible:true, Invulnerable:true, NoGravity:true}
$summon item ~ ~ ~ {Tags:[system.shop.item.showcase, system.shop.item.showcase.uninitialized, system.shop.$(selfuuid)], NoGravity:true, Invulnerable:true, PickupDelay:32767s, Age:-32768s, Item:{id:"minecraft:stone",count:1b}}

# 미리보기 아이템 설정
$execute positioned ~ ~ ~ run loot replace entity @n[type=armor_stand,tag=system.shop.armor_stand.loot_storage,tag=system.shop.$(selfuuid),distance=..0.5] weapon.mainhand loot $(loottable)
$execute positioned ~ ~ ~ run item replace entity @n[type=item,tag=system.shop.item.showcase.uninitialized,tag=system.shop.$(selfuuid),distance=..0.5] contents from entity @n[type=armor_stand,tag=system.shop.armor_stand.loot_storage,tag=system.shop.$(selfuuid),distance=..0.5] weapon.mainhand
$execute positioned ~ ~ ~ run kill @n[type=armor_stand,tag=system.shop.armor_stand.loot_storage,tag=system.shop.$(selfuuid),distance=..0.5]

# 마커에 소환된 아이템 데이터 저장
$execute positioned ~ ~ ~ as @n[type=item,tag=system.shop.item.showcase.uninitialized,tag=system.shop.$(selfuuid),distance=..0.5] run function system:utils/uuid_tokenizer/init
data modify entity @s data.itemuuid set from storage timeisgold:uuid_tokenizer output

$data modify entity @s data.itemdata set from entity @n[type=item,tag=system.shop.item.showcase.uninitialized,tag=system.shop.$(selfuuid),distance=..0.5] Item
$data modify entity @s data.count set from entity @n[type=item,tag=system.shop.item.showcase.uninitialized,tag=system.shop.$(selfuuid),distance=..0.5] Item.count
$data modify entity @s data.itemname set from entity @n[type=item,tag=system.shop.item.showcase.uninitialized,tag=system.shop.$(selfuuid),distance=..0.5] Item.components."minecraft:custom_name"

execute positioned ~ ~ ~ as @n[type=item,tag=system.shop.item.showcase.uninitialized,distance=..0.5] run tag @s remove system.shop.item.showcase.uninitialized