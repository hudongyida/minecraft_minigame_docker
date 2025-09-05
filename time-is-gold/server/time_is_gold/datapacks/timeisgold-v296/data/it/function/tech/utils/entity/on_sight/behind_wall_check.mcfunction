# 태그된 몬스터가 실제로 보이는지 확인하는 함수
# 실행 인자: 시야를 확인할 플레이어
# $(playeruuid) - 플레이어의 UUID Token

$execute unless entity @e[tag=item.utils.entity.on_sight.target.$(playeruuid)] run return fail
$execute as @n[tag=item.utils.entity.on_sight.target.$(playeruuid)] run tag @s add item.utils.entity.on_sight.behind_wall_check.$(playeruuid)

$execute as @s at @s anchored eyes positioned ^ ^ ^ as @n[type=marker,tag=item.utils.entity.on_sight.marker.raycast_check,distance=..0.5] anchored eyes rotated as @s run rotate @s facing entity @n[tag=item.utils.entity.on_sight.behind_wall_check.$(playeruuid)] eyes
execute as @s at @s anchored eyes positioned ^ ^ ^ as @n[type=marker,tag=item.utils.entity.on_sight.marker.raycast_check,distance=..0.5] anchored eyes rotated as @s run function it:tech/utils/raycast/default/init with storage timeisgold:function_api stack[-1]

$execute as @e[tag=item.utils.entity.on_sight.behind_wall_check.$(playeruuid)] run tag @s remove item.utils.entity.on_sight.target.$(playeruuid)
$execute as @e[tag=item.utils.entity.on_sight.behind_wall_check.$(playeruuid)] run tag @s remove item.utils.entity.on_sight.target
$execute as @e[tag=item.utils.entity.on_sight.behind_wall_check.$(playeruuid)] run tag @s remove item.utils.entity.on_sight.behind_wall_check.$(playeruuid)

$execute if entity @e[tag=item.utils.entity.on_sight.target.$(playeruuid)] run function it:tech/utils/entity/on_sight/behind_wall_check with storage timeisgold:function_api stack[-1]