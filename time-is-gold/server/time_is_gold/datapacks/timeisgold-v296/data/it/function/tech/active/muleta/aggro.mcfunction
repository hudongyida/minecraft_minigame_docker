data modify storage timeisgold:function_api stack append value {playerid:0}
execute as @s store result storage timeisgold:function_api stack[-1].playerid int 1 run scoreboard players get @s playerid
function it:tech/active/muleta/teleport with storage timeisgold:function_api stack[-1]
data remove storage timeisgold:function_api stack[-1]