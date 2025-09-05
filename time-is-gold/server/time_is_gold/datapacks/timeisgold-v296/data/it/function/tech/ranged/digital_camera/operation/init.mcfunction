data modify storage timeisgold:function_api stack append value {playerid:0}
execute store result storage timeisgold:function_api stack[-1].playerid int 1 run scoreboard players get @s playerid

function it:tech/utils/entity/on_sight/init {distance:30, cos:5000, tag:item.digital_camera.on_sight}
execute as @e[tag=item.digital_camera.on_sight] run function it:tech/ranged/digital_camera/operation/apply_damage with storage timeisgold:function_api stack[-1]

data remove storage timeisgold:function_api stack[-1]