data modify storage timeisgold:function_api stack append value {x:0, y:0, z:0}
data modify storage timeisgold:function_api stack[-1].x set from entity @s Pos[0]
execute store result score @s item.chronospark.particle run data get entity @s Pos[1] 1000
execute store result storage timeisgold:function_api stack[-1].y double 0.001 run scoreboard players operation @s item.chronospark.particle += #500 scoreboardConstant
data modify storage timeisgold:function_api stack[-1].z set from entity @s Pos[2]
function it:tech/melee/chronospark/functions/particle_trail with storage timeisgold:function_api stack[-1]
data remove storage timeisgold:function_api stack[-1]

particle dust{color:[1.000,0.825,0.000],scale:1} ~ ~ ~ .2 .2 .2 0 5 force