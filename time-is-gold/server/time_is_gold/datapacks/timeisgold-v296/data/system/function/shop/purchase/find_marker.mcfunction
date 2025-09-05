# 실행 인자: 상점 마커

# 20240710 - :mojang:행동으로 인해 give 명령어와 Item NBT 구조를 맞출 수 없게 된 관계로, 아이템을 지급할 때 루트테이블을 직접 쓰도록 수정했습니다.

# 스택 데이터는 이 함수를 호출하는 operation/init 함수에서 넣은 데이터를 그대로 사용(Pop도 해당 함수에서 수행)
data modify storage timeisgold:function_api stack[-1].selfuuid set from entity @s data.selfuuid
data modify storage timeisgold:function_api stack[-1].itemuuid set from entity @s data.itemuuid
data modify storage timeisgold:function_api stack[-1].itemdata set from entity @s data.itemdata

function system:shop/purchase/pay_cost with storage timeisgold:function_api stack[-1]
execute unless score @s system.shop.cost_paid matches 1 run return 0

execute if score @s system.shop.stock matches 1.. run scoreboard players remove @s system.shop.stock 1
execute if score @s system.shop.stock matches 0 run tag @s add system.shop.marker.remove

function system:shop/purchase/give_item with storage timeisgold:function_api stack[-1]
execute as @s[tag=system.shop.marker.remove] at @s run function system:shop/remove with entity @s data