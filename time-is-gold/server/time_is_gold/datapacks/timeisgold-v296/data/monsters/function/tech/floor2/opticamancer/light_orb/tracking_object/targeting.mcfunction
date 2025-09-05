execute at @s as @n[predicate=system:player,distance=..50] run function system:utils/uuid_tokenizer/init
data modify entity @s data.targetuuid set from storage timeisgold:uuid_tokenizer output