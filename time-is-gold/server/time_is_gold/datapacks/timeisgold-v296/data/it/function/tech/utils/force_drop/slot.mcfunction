# 실행 인자: 아이템을 강제로 버리게 될 플레이어
# $(delay)  - 강제로 버린 아이템을 다시 주울 수 있기까지의 딜레이 (틱 단위)

$execute as @s unless items entity @s container.$(slot) * run return fail
execute at @s run summon item ~ ~1 ~ {Tags:["item.utils.force_dropped_item"],Item:{id:"minecraft:stone"},PickupDelay:32767s}
$execute at @s positioned ~ ~1 ~ run data modify entity @n[type=item,tag=item.utils.force_dropped_item,distance=..0.5] Item set from entity @s Inventory[{Slot:$(slot)b}]
$execute at @s positioned ~ ~1 ~ run data modify entity @n[type=item,tag=item.utils.force_dropped_item,distance=..0.5] PickupDelay set value $(delay)s
execute at @s positioned ~ ~1 ~ run tag @n[type=item,tag=item.utils.force_dropped_item,distance=..0.5] remove item.utils.force_dropped_item
$item replace entity @s container.$(slot) with air