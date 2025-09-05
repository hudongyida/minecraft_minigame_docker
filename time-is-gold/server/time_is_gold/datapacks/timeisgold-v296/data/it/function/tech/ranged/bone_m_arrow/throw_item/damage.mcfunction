$execute as @a[scores={playerid=$(playerid)},limit=1] run function it:tech/ranged/bone_m_arrow/throw_item/get_base_damage

# 손에 근접 무기가 없으면 함수 종료
$execute as @a[scores={playerid=$(playerid)},limit=1] if score @s item.bone_m_arrow.damage_value matches 0 run return fail

$execute as @a[scores={playerid=$(playerid)},limit=1] run function it:tech/ranged/bone_m_arrow/throw_item/get_cost

# 플레이어일 경우 화살 수가 부족하면 함수 종료
$execute as @a[predicate=system:player,scores={playerid=$(playerid)},limit=1] if score @s item.bone_m_arrow.arrow_cost > @s item.bone_m_arrow.arrow_count run return fail

$data modify storage timeisgold:function_api stack append value {playerid:$(playerid), damage:0, arrow_cost:0}
$execute store result storage timeisgold:function_api stack[-1].damage double 1.0 run scoreboard players get @a[scores={playerid=$(playerid)},limit=1] item.bone_m_arrow.damage_value
$execute store result storage timeisgold:function_api stack[-1].arrow_cost int 1 run scoreboard players get @a[scores={playerid=$(playerid)},limit=1] item.bone_m_arrow.arrow_cost
function it:tech/ranged/bone_m_arrow/throw_item/damage_manager with storage timeisgold:function_api stack[-1]
data remove storage timeisgold:function_api stack[-1]