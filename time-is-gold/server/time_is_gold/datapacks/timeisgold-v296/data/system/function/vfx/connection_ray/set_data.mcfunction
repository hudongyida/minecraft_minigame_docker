# 실행 인자: 초기화되지 않은 system.vfx.connection_ray.marker 마커

function system:utils/uuid_tokenizer/init
data modify entity @s data.selfuuid set from storage timeisgold:uuid_tokenizer output
$rotate @s facing entity $(targetuuid) eyes
$scoreboard players set @s system.vfx.connection_ray.step $(step)
scoreboard players set @s system.vfx.connection_ray.min_norm 2147483647
tag @s remove system.vfx.connection_ray.marker.init_target