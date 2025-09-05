data modify storage timeisgold:function_api stack append value {playerid:0,value:2.0d,knockback:0}
execute store result storage timeisgold:function_api stack[-1].playerid int 1 run scoreboard players get @s playerid
execute at @s as @e[tag=monster,tag=!boss,distance=..15] if function it:tech/passive/wandering_soul/functions/targeting run function it:tech/passive/wandering_soul/functions/damage
data remove storage timeisgold:function_api stack[-1]