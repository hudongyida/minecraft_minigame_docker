data modify storage timeisgold:function_api stack append value {vertical:0, horizontal:0, v_point:0, h_point:0}
execute as @s store result storage timeisgold:function_api stack[-1].vertical int 1 run random value -10..10
execute as @s store result storage timeisgold:function_api stack[-1].horizontal int 1 run random value -10..10
execute as @s store result storage timeisgold:function_api stack[-1].v_point int 1 run random value 0..100
execute as @s store result storage timeisgold:function_api stack[-1].h_point int 1 run random value 0..100
execute as @s run function monsters:tech/global/utils/fear/rotation with storage timeisgold:function_api stack[-1]
data remove storage timeisgold:function_api stack[-1]