# 실행 인자: 플레이어가 연 문의 반대편에 위치한 문 인터랙션
# $(playerid)   - 문을 연 플레이어의 playerid

$execute at @s as @e[tag=monster,distance=..12] run function system:combat/modified_damage/melee/init {value:10, knockback:1, playerid:$(playerid)}

data modify storage timeisgold:function_api stack append value {dooruuid:""}
execute as @s run function system:utils/uuid_tokenizer/init
data modify storage timeisgold:function_api stack[-1].dooruuid set from storage timeisgold:uuid_tokenizer output
execute at @s as @e[tag=monster,distance=..12] run function it:tech/passive/door_breaching_manual/set_motion with storage timeisgold:function_api stack[-1]
data remove storage timeisgold:function_api stack[-1]

# VFX
execute at @s as @e[tag=monster,distance=..12] at @s run particle explosion ~ ~ ~ 0.1 0.1 0.1 0.1 1 force