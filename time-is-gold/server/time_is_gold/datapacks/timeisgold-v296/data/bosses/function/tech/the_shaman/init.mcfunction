# 실행 인자: boss.the_shaman.uninitialized 태그를 가진 제사장 보스 엔티티

function system:utils/uuid_tokenizer/init
function bosses:tech/utils/health_offset/init {offset:180}
execute as @s on passengers as @s[type=marker,tag=boss.the_shaman.marker.AI] run data modify entity @s data.bossuuid set from storage timeisgold:uuid_tokenizer output
execute as @s on passengers as @s[type=marker,tag=boss.the_shaman.marker.AI] store result entity @s data.entityid int 1 on vehicle run scoreboard players get @s entityid
function bosses:tech/utils/bossbar/manager {id:0, function:"bosses:tech/the_shaman/default/bossbar/init"}

# 초기 쿨다운 설정
scoreboard players set @s bosses.the_shaman.pattern1.cooldown 0
scoreboard players set @s bosses.the_shaman.pattern2.cooldown 100
scoreboard players set @s bosses.the_shaman.pattern3.cooldown 60
scoreboard players operation @s bosses.the_shaman.pattern4.cooldown = #SYSTEM bosses.the_shaman.pattern4.cooldown
scoreboard players operation @s bosses.the_shaman.pattern5.cooldown = #SYSTEM bosses.the_shaman.pattern5.cooldown
scoreboard players set @s bosses.the_shaman.pattern6.cooldown 0

# Debug
#scoreboard players set @s bosses.the_shaman.pattern5.cooldown 0

execute as @n[type=marker,tag=boss.arena_center] run data modify entity @s data.bossuuid set from storage timeisgold:uuid_tokenizer output

tag @s remove boss.the_shaman.uninitialized