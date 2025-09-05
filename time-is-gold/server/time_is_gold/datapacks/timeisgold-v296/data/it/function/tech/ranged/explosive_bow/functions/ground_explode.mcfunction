data modify storage timeisgold:function_api stack append value {power:2, playerid:0}
execute as @s store result storage timeisgold:function_api stack[-1].playerid int 1 run scoreboard players get @s item.explosive_bow.origin

execute as @s at @s run function it:tech/utils/explode/init with storage timeisgold:function_api stack[-1]
execute as @s run kill @s

data remove storage timeisgold:function_api stack[-1]