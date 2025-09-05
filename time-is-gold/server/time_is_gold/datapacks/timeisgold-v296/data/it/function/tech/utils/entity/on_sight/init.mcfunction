# 플레이어의 시야각 내에 들어온 모든 몬스터를 태그하는 함수.
# 실행 인자: 시야를 확인할 플레이어
# $(distance)   - 시야 거리
# $(cos)        - 시야각의 코사인 값 x 1000
# $(tag)        - 감지된 몬스터에 추가할 태그

$data modify storage timeisgold:function_api stack append value {distance:$(distance), cos:$(cos), playeruuid:""}

$scoreboard players set @s item.utils.entity.on_sight.cos_theta $(cos)
scoreboard players operation @s item.utils.entity.on_sight.cos_theta *= -1 scoreboardConstant

function system:utils/uuid_tokenizer/init
data modify storage timeisgold:function_api stack[-1].playeruuid set from storage timeisgold:uuid_tokenizer output

execute at @s run function it:tech/utils/entity/on_sight/tag_target with storage timeisgold:function_api stack[-1]

execute at @s run function it:tech/utils/entity/on_sight/on_sight_check with storage timeisgold:function_api stack[-1]

execute as @s at @s anchored eyes positioned ^ ^ ^ run summon marker ~ ~ ~ {Tags:[item.utils.entity.on_sight.marker.raycast_check]}
$data modify storage timeisgold:function_api stack append value {type:utils, path:"entity/on_sight", initfunction:none, tickfunction:none, hitfunction:tag, endfunction:none,\
                                                                speed:0.5, step:$(distance), wall:1, hitend:1, hitbox_1:0.15, hitbox_2:0.7, hitbox_3:0.85, playerid:0, playeruuid:""}
execute store result storage timeisgold:function_api stack[-1].playerid int 1 run scoreboard players get @s playerid
execute store result storage timeisgold:function_api stack[-1].step int 2 run data get storage timeisgold:function_api stack[-1].step
data modify storage timeisgold:function_api stack[-1].playeruuid set from storage timeisgold:function_api stack[-2].playeruuid

execute at @s run function it:tech/utils/entity/on_sight/behind_wall_check with storage timeisgold:function_api stack[-1]

data remove storage timeisgold:function_api stack[-1]
execute at @s anchored eyes positioned ^ ^ ^ run kill @n[type=marker,tag=item.utils.entity.on_sight.marker.raycast_check,distance=..0.5]

$execute as @e[tag=item.utils.entity.on_sight.final_target] run function it:tech/utils/entity/on_sight/apply_tag {tag:$(tag)}
data remove storage timeisgold:function_api stack[-1]