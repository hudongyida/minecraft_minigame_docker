scoreboard players add @s item.timebreaker.gravity 17
data modify storage timeisgold:function_api stack append value {velocity:0}
execute store result storage timeisgold:function_api stack[-1].velocity float 0.001 run scoreboard players get @s item.timebreaker.gravity
execute as @s run function it:tech/melee/timebreaker/functions/descent with storage timeisgold:function_api stack[-1]
data remove storage timeisgold:function_api stack[-1]