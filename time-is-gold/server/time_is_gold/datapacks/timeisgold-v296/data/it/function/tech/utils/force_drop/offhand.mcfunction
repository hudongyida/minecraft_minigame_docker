# 실행 인자: 아이템을 강제로 버리게 될 플레이어
# $(delay)  - 강제로 버린 아이템을 다시 주울 수 있기까지의 딜레이 (틱 단위)

execute at @s run summon item ~ ~1 ~ {Tags:["item.utils.force_dropped_item"],Item:{id:"minecraft:stone"},PickupDelay:32767s}
execute at @s positioned ~ ~1 ~ run data modify entity @n[type=item,tag=item.utils.force_dropped_item,distance=..0.5] Item set from entity @s equipment.offhand
$execute at @s positioned ~ ~1 ~ run data modify entity @e[type=item,tag=item.utils.force_dropped_item,distance=..0.5,sort=nearest,limit=1] PickupDelay set value $(delay)s
execute at @s positioned ~ ~1 ~ run tag @n[type=item,tag=item.utils.force_dropped_item,distance=..0.5] remove item.utils.force_dropped_item
item replace entity @s weapon.offhand with air

title @s actionbar [{"text":"你现在无法在副手持有物品！", "color":"#ff5555"}]
execute at @s run playsound minecraft:entity.enderman.teleport hostile @s ~ ~ ~ 0.5 0.5 0.5