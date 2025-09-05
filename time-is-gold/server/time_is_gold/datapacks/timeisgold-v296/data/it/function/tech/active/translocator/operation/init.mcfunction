data modify storage timeisgold:function_api stack append value {x:0, y:0, z:0, targetuuid:""}

execute at @s as @a[predicate=system:player,tag=!item.translocator.use,distance=1..,sort=furthest,limit=1] run function system:utils/uuid_tokenizer/init
data modify storage timeisgold:function_api stack[-1].targetuuid set from storage timeisgold:uuid_tokenizer output

execute at @s run function it:tech/active/translocator/operation/get_pos with storage timeisgold:function_api stack[-1]
data remove storage timeisgold:function_api stack[-1]