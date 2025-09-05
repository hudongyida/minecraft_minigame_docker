# 실행 인자: 5번 패턴을 실행 중인 제사장 보스 엔티티

data modify storage timeisgold:function_api stack append value {bossuuid:""}
execute as @s on passengers as @s[type=marker,tag=boss.the_shaman.marker.AI] run data modify storage timeisgold:function_api stack[-1].bossuuid set from entity @s data.bossuuid

execute at @s at @n[type=marker,tag=boss.arena_center] run function bosses:tech/the_shaman/pattern5/patterns/step with storage timeisgold:function_api stack[-1]
execute at @s at @n[type=marker,tag=boss.arena_center] run function bosses:tech/the_shaman/pattern5/operation/border_check with storage timeisgold:function_api stack[-1]

data remove storage timeisgold:function_api stack[-1]

# VFX
execute at @s run particle cloud ~ ~ ~ 0.25 0 0.25 0 4 force

# 보스 애니메이션 실행
scoreboard players operation @s bosses.utils.cutscene.anim_tick = @s bosses.the_shaman.pattern5.tick
scoreboard players operation @s bosses.utils.cutscene.anim_tick %= #100 scoreboardConstant

data modify storage timeisgold:function_api stack append value {index:0, dy:0d}
execute store result storage timeisgold:function_api stack[-1].index int 1 run scoreboard players get @s bosses.utils.cutscene.anim_tick
function bosses:tech/the_shaman/pattern2/mirror/macro/search_table with storage timeisgold:function_api stack[-1]
function bosses:tech/the_shaman/cutscene/anim with storage timeisgold:function_api stack[-1]
data remove storage timeisgold:function_api stack[-1]