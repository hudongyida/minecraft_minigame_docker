# 실행 인자: energy_construct.uninitialized 태그가 있는 에너지 구조체 엔티티

function system:utils/uuid_tokenizer/init
execute as @s on passengers as @s[type=marker,tag=energy_construct.marker.creeper_check] store result entity @s data.entityid int 1 on vehicle run scoreboard players get @s entityid
execute as @s on passengers as @s[type=marker,tag=energy_construct.marker.creeper_check] run data modify entity @s data.monsteruuid set from storage timeisgold:uuid_tokenizer output
tag @s remove energy_construct.uninitialized