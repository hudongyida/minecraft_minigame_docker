# 실행 인자: 플레이어와 상호작용한 상점 인터랙션

execute unless function system:shop/purchase/operation/purchase_fail_check run return run data remove entity @s interaction

data modify storage timeisgold:function_api stack append value {playeruuid:"", playeruuidlist:[], itemdata:{}, selfuuid:"", itemuuid:""}
execute as @s on target run function system:utils/uuid_tokenizer/init
data modify storage timeisgold:function_api stack[-1].playeruuid set from storage timeisgold:uuid_tokenizer output
execute as @s on target run data modify storage timeisgold:function_api stack[-1].playeruuidlist set from entity @s UUID

execute at @s as @n[type=marker,tag=system.shop.marker.storage,distance=..0.5] run function system:shop/purchase/find_marker

data remove storage timeisgold:function_api stack[-1]
data remove entity @s interaction