$data modify storage timeisgold:function_api stack append value {originuuid:"", targetuuid:"$(targetuuid)", speed:0.25, step:100, tickfunction:"it:tech/melee/spirit_retriever/vfx/ray_particle"}
execute as @s run function system:utils/uuid_tokenizer/init
data modify storage timeisgold:function_api stack[-1].originuuid set from storage timeisgold:uuid_tokenizer output
execute as @s on vehicle at @s run function system:vfx/connection_ray/init with storage timeisgold:function_api stack[-1]
data remove storage timeisgold:function_api stack[-1]