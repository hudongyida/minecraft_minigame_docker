# 실행 인자: 컷씬 재생 중인 제사장 보스 엔티티

scoreboard players remove @s bosses.utils.cutscene.tick 1

# 컷씬 재생 종료
execute if score @s bosses.utils.cutscene.tick matches ..0 run function bosses:tech/the_shaman/cutscene/terminate
execute unless score @s bosses.utils.cutscene.tick matches 0.. run return fail

execute if score @s bosses.utils.cutscene.tick = #SYSTEM bosses.utils.cutscene.transition at @s run function bosses:tech/the_shaman/cutscene/prop/init_orbs

# 보스바 애니메이션
scoreboard players operation @s bosses.utils.cutscene.bossbar.max = #SYSTEM bosses.utils.cutscene.tick
scoreboard players operation @s bosses.utils.cutscene.bossbar.max -= #SYSTEM bosses.utils.cutscene.transition
scoreboard players operation @s bosses.utils.cutscene.bossbar.value = #SYSTEM bosses.utils.cutscene.tick
scoreboard players operation @s bosses.utils.cutscene.bossbar.value -= @s bosses.utils.cutscene.tick
execute if score @s bosses.utils.cutscene.bossbar.value <= @s bosses.utils.cutscene.bossbar.max run function bosses:tech/utils/bossbar/manager {function:"bosses:tech/utils/cutscene/bossbar_anim", id:0}

# 파티클
execute at @s run particle cloud ~ ~ ~ 0.25 0 0.25 0 4 force

# 주변 플레이어 바라보도록 회전
execute at @s anchored eyes facing entity @p eyes run rotate @s ~ ~

# 위아래로 움직이는 애니메이션 실행
scoreboard players operation @s bosses.utils.cutscene.anim_tick = @s bosses.utils.cutscene.tick
scoreboard players operation @s bosses.utils.cutscene.anim_tick %= #100 scoreboardConstant

data modify storage timeisgold:function_api stack append value {index:0, dy:0d}
execute store result storage timeisgold:function_api stack[-1].index int 1 run scoreboard players get @s bosses.utils.cutscene.anim_tick
function bosses:tech/the_shaman/pattern2/mirror/macro/search_table with storage timeisgold:function_api stack[-1]
function bosses:tech/the_shaman/cutscene/anim with storage timeisgold:function_api stack[-1]
data remove storage timeisgold:function_api stack[-1]