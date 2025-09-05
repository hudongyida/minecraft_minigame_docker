# 실행 인자: 오토마톤[tag=boss.automaton.uninitialized]

function system:utils/uuid_tokenizer/init
function bosses:tech/utils/health_offset/init {offset:200}
execute as @s on passengers as @s[type=marker,tag=boss.automaton.marker.AI] run data modify entity @s data.bossuuid set from storage timeisgold:uuid_tokenizer output
execute as @s on passengers as @s[type=marker,tag=boss.automaton.marker.AI] store result entity @s data.entityid int 1 on vehicle run scoreboard players get @s entityid
execute as @s on passengers as @s[type=marker,tag=boss.automaton.marker.AI] run data modify entity @s data.targetuuidlist set from entity @p[predicate=system:player] UUID
function bosses:tech/utils/bossbar/manager {id:0, function:"bosses:tech/automaton/pattern1/bossbar/init"}

scoreboard players operation @s bosses.automaton.global.cooldown = #SYSTEM bosses.automaton.global.cooldown
scoreboard players operation @s bosses.automaton.pattern2.cooldown = #SYSTEM bosses.automaton.pattern2.cooldown
scoreboard players operation @s bosses.automaton.pattern3.cooldown = #SYSTEM bosses.automaton.pattern3.cooldown
scoreboard players set @s bosses.automaton.pattern4.cooldown 0

execute as @n[type=marker,tag=boss.arena_center] run data modify entity @s data.bossuuid set from storage timeisgold:uuid_tokenizer output

tag @s remove boss.automaton.uninitialized