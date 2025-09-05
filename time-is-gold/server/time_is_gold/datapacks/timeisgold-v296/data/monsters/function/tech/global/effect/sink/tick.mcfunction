# 실행 인자: @e[tag=monster]

execute if score @s combat.sink.stack_value = @s monsters.global.effect.sink.applied_stack run return fail

data modify storage timeisgold:function_api stack append value {sink_total_multiplier:0}
execute store result storage timeisgold:function_api stack[-1].sink_total_multiplier double -0.01 run scoreboard players get @s combat.sink.total_diff
scoreboard players operation @s monsters.global.effect.sink.applied_stack = @s combat.sink.stack_value

function monsters:tech/global/effect/sink/update_attribute with storage timeisgold:function_api stack[-1]
data remove storage timeisgold:function_api stack[-1]