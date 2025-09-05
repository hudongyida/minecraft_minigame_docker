# 실행 인자: @e[type=marker,tag=bosses.the_shaman.pattern2.mirror.marker.uninitialized]

function system:utils/uuid_tokenizer/init
data modify entity @s data.selfuuid set from storage timeisgold:uuid_tokenizer output
execute as @s at @s run function bosses:tech/the_shaman/pattern2/mirror/summon/place_display with entity @s data

tag @s remove bosses.the_shaman.pattern2.mirror.marker.uninitialized