# 대상 구하기
data modify storage timeisgold:function_api stack append value {targetuuid:""}

execute at @s run summon marker ~ ~ ~ {Tags:["item.impact_pulser.marker.center"]}
execute at @s as @n[type=marker,tag=item.impact_pulser.marker.center,distance=..0.5] run function system:utils/uuid_tokenizer/init
data modify storage timeisgold:function_api stack[-1].targetuuid set from storage timeisgold:uuid_tokenizer output
execute at @s as @e[tag=monster,distance=..5] run function it:tech/active/impact_pulser/set_motion with storage timeisgold:function_api stack[-1]

kill @n[type=marker,tag=item.impact_pulser.marker.center,distance=..0.5]
data remove storage timeisgold:function_api stack[-1]