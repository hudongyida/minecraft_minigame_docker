data modify storage timeisgold:function_api stack append value {target:0}
execute store result storage timeisgold:function_api stack[-1].target int 1 run scoreboard players get @s item.sacrifice.target
function it:tech/active/sacrifice/functions/death_dessage with storage timeisgold:function_api stack[-1]
data remove storage timeisgold:function_api stack[-1]