data modify storage timeisgold:function_api stack append value {playerid:0}
execute store result storage timeisgold:function_api stack[-1].playerid int 1 run scoreboard players get @s playerid
execute at @s run function it:tech/passive/scientific_calculator/macro/apply_damage with storage timeisgold:function_api stack[-1]
data remove storage timeisgold:function_api stack[-1]