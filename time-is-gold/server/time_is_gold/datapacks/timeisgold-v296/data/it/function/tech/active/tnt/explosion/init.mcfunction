data modify storage timeisgold:function_api stack append value {power:3, playerid:0}
execute store result storage timeisgold:function_api stack[-1].playerid int 1 run scoreboard players get @s item.tnt.playerid
execute at @s run function it:tech/utils/explode/init with storage timeisgold:function_api stack[-1]
data remove storage timeisgold:function_api stack[-1]

kill @s