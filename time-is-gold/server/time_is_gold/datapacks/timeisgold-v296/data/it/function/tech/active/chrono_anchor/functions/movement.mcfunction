data modify storage timeisgold:function_api stack append value {vector_y:0}
scoreboard players add @s item.chrono_anchor.sin 60000
execute if score @s item.chrono_anchor.sin matches 3600000.. run scoreboard players set @s item.chrono_anchor.sin 0
function system:math/trig/sin {input:item.chrono_anchor.sin,output:item.chrono_anchor.movement}
execute store result storage timeisgold:function_api stack[-1].vector_y double 0.00001 run scoreboard players get @s item.chrono_anchor.movement
function it:tech/active/chrono_anchor/functions/vector with storage timeisgold:function_api stack[-1]
data remove storage timeisgold:function_api stack[-1]