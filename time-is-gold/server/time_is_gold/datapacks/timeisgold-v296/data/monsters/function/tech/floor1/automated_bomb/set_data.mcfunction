# 실행 인자: automated_bomb.uninitialized 태그가 있는 자동 폭탄 인형

function system:utils/uuid_tokenizer/init
execute as @s on passengers as @s[type=marker,tag=automated_bomb.marker.creeper_check] store result entity @s data.entityid int 1 on vehicle run scoreboard players get @s entityid
execute as @s on passengers as @s[type=marker,tag=automated_bomb.marker.creeper_check] run data modify entity @s data.monsteruuid set from storage timeisgold:uuid_tokenizer output
tag @s remove automated_bomb.uninitialized