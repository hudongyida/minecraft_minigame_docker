# 실행 인자: 컷씬 재생 중인 오토마톤 보스 엔티티

scoreboard players remove @s bosses.utils.cutscene.tick 1

# 컷씬 재생 종료
execute if score @s bosses.utils.cutscene.tick matches ..0 run function bosses:tech/automaton/cutscene/terminate
execute unless score @s bosses.utils.cutscene.tick matches 0.. run return fail

execute if score @s bosses.utils.cutscene.tick <= #SYSTEM bosses.utils.cutscene.transition at @s run function bosses:tech/automaton/cutscene/anim

# 보스바 애니메이션
scoreboard players operation @s bosses.utils.cutscene.bossbar.max = #SYSTEM bosses.utils.cutscene.tick
scoreboard players operation @s bosses.utils.cutscene.bossbar.max -= #SYSTEM bosses.utils.cutscene.transition
scoreboard players operation @s bosses.utils.cutscene.bossbar.value = #SYSTEM bosses.utils.cutscene.tick
scoreboard players operation @s bosses.utils.cutscene.bossbar.value -= @s bosses.utils.cutscene.tick
execute if score @s bosses.utils.cutscene.bossbar.value <= @s bosses.utils.cutscene.bossbar.max run function bosses:tech/utils/bossbar/manager {function:"bosses:tech/utils/cutscene/bossbar_anim", id:0}