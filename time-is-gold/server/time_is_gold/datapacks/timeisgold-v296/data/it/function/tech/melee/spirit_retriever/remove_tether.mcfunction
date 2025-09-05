data modify storage timeisgold:function_api stack append value {targetuuid:""}
execute as @s run function system:utils/uuid_tokenizer/init
data modify storage timeisgold:function_api stack[-1].targetuuid set from storage timeisgold:uuid_tokenizer output
execute as @s run function it:tech/melee/spirit_retriever/kill_spirit with storage timeisgold:function_api stack[-1]
data remove storage timeisgold:function_api stack[-1]