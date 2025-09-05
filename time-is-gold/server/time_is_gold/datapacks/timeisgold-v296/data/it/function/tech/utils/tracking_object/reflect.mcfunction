$execute as @s positioned ^ ^ ^ run function system:math/vectors/reflection/init {reflect_distance:$(speed), output_x:item.utils.tracking_object.reflection.x, output_y:item.utils.tracking_object.reflection.y, output_z:item.utils.tracking_object.reflection.z}

$data modify storage timeisgold:function_api stack append value {x:0, y:0, z:0, selfuuid:"$(selfuuid)"}
execute store result storage timeisgold:function_api stack[-1].x double 0.01 run scoreboard players get @s item.utils.tracking_object.reflection.x
execute store result storage timeisgold:function_api stack[-1].y double 0.01 run scoreboard players get @s item.utils.tracking_object.reflection.y
execute store result storage timeisgold:function_api stack[-1].z double 0.01 run scoreboard players get @s item.utils.tracking_object.reflection.z
execute as @s run function it:tech/utils/raycast/reflection/rotate_marker with storage timeisgold:function_api stack[-1]
data remove storage timeisgold:function_api stack[-1]

data modify storage timeisgold:function_api stack append from entity @s data
execute as @s store result storage timeisgold:function_api stack[-1].step int 1 run scoreboard players get @s item.utils.tracking_object.step
execute as @s store result storage timeisgold:function_api stack[-1].reflection int 1 run scoreboard players get @s item.utils.tracking_object.reflection_count
execute unless data storage timeisgold:function_api stack[-1].targetuuid run data modify storage timeisgold:function_api stack[-1].targetuuid set value 0
execute as @s positioned ^ ^ ^ rotated as @s run function it:tech/utils/tracking_object/init with storage timeisgold:function_api stack[-1]
data remove storage timeisgold:function_api stack[-1]