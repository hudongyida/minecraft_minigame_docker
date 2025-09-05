data modify storage timeisgold:function_api stack append value {playerid:0}
execute store result storage timeisgold:function_api stack[-1].playerid int 1 run scoreboard players get @s item.ashy_furance.owner
function it:tech/active/ashy_furance/functions/tick with storage timeisgold:function_api stack[-1]
data remove storage timeisgold:function_api stack[-1]