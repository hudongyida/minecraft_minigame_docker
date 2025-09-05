#tellraw @a [{"text": "Current Marker: "},{"nbt": "UUID","entity": "@s"}]
#tellraw @a [{"nbt": "Rotation[0]","entity": "@s"},{"text": " | "},{"nbt": "Rotation[1]","entity": "@s"}]

$execute as @s positioned ^ ^ ^ run function system:math/vectors/reflection/init {reflect_distance:$(speed), output_x:item.utils.raycast.reflection.x, output_y:item.utils.raycast.reflection.y, output_z:item.utils.raycast.reflection.z}

$data modify storage timeisgold:function_api stack append value {x:0, y:0, z:0, selfuuid:"$(selfuuid)"}
execute store result storage timeisgold:function_api stack[-1].x double 0.01 run scoreboard players get @s item.utils.raycast.reflection.x
execute store result storage timeisgold:function_api stack[-1].y double 0.01 run scoreboard players get @s item.utils.raycast.reflection.y
execute store result storage timeisgold:function_api stack[-1].z double 0.01 run scoreboard players get @s item.utils.raycast.reflection.z
execute as @s run function it:tech/utils/raycast/reflection/rotate_marker with storage timeisgold:function_api stack[-1]
data remove storage timeisgold:function_api stack[-1]

#tellraw @a [{"nbt": "Rotation[0]","entity": "@s"},{"text": " | "},{"nbt": "Rotation[1]","entity": "@s"}]

data modify storage timeisgold:function_api stack append from storage timeisgold:function_api stack[-1]
execute as @s store result storage timeisgold:function_api stack[-1].step int 1 run scoreboard players get @s item.utils.raycast.reflection.step
execute as @s store result storage timeisgold:function_api stack[-1].reflection int 1 run scoreboard players get @s item.utils.raycast.reflection.reflection_count
execute as @s positioned ^ ^ ^ rotated as @s run function it:tech/utils/raycast/reflection/init with storage timeisgold:function_api stack[-1]
data remove storage timeisgold:function_api stack[-1]