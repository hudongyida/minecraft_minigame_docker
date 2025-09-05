data modify storage timeisgold:function_api stack append value {power:2, playerid:0}
execute store result storage timeisgold:function_api stack[-1].playerid int 1 run scoreboard players get @s item.explosive_axe.explosion.playerid
execute at @s run function it:tech/utils/explode/init with storage timeisgold:function_api stack[-1]
data remove storage timeisgold:function_api stack[-1]

scoreboard players reset @s item.explosive_axe.explosion.tick
scoreboard players reset @s item.explosive_axe.explosion.playerid