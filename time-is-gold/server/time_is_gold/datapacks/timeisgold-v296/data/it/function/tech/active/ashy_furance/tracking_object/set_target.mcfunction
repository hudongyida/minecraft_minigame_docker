execute at @s as @n[tag=monster,distance=..13] run function system:utils/uuid_tokenizer/init
data modify entity @s data.targetuuid set from storage timeisgold:uuid_tokenizer output