# Ally set Owner
# 인자: @s (주인 플레이어)

# inputTag: 소환수 태그 (시행시 제거됨)
# type    : 몬스터 타입
# 반환 태그: monster.ally.player-$(playerid)

$data modify storage timeisgold:function_api stack append value {playerid:0, inputTag:$(inputTag)}
execute as @s store result storage timeisgold:function_api stack[-1].playerid int 1 run scoreboard players get @s playerid
$execute as @e[type=$(type),tag=monster.ally,tag=$(inputTag)] run function it:tech/utils/ally/tag_target with storage timeisgold:function_api stack[-1]
data remove storage timeisgold:function_api stack[-1]