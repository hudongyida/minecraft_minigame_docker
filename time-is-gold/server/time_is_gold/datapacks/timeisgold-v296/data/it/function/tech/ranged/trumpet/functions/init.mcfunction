data modify storage timeisgold:function_api stack append value {UUID:[]}
data modify storage timeisgold:function_api stack[-1].UUID set from entity @s UUID
function it:tech/utils/entity/on_sight/init {distance:30, cos:5000, tag:item.trumpet.on_sight}
execute as @e[tag=monster,tag=item.trumpet.on_sight] run function it:tech/ranged/trumpet/functions/firework with storage timeisgold:function_api stack[-1]
data remove storage timeisgold:function_api stack[-1]