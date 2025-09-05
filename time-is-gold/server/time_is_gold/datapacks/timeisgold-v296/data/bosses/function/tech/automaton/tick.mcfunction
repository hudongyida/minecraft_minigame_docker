execute as @s[tag=boss.automaton.uninitialized] if score @s entityid matches 0.. run function bosses:tech/automaton/init

execute as @s[tag=boss.automaton.play_cutscene] run function bosses:tech/automaton/cutscene/init
execute if score @s bosses.utils.cutscene.tick matches 0.. run function bosses:tech/automaton/cutscene/tick
execute if score @s bosses.utils.cutscene.tick matches 0.. run return fail

# 오토마톤 기본 쿨다운 관리
execute as @s if score @s bosses.automaton.global.cooldown matches 1.. run scoreboard players remove @s bosses.automaton.global.cooldown 1

# 오토마톤 광폭화 상태 관리
execute as @s[tag=!boss.berserk] run function bosses:tech/automaton/default/berserk_check

# 구속 디버프 면역 처리
effect clear @s slowness

function bosses:tech/automaton/pattern1/main
function bosses:tech/automaton/pattern2/main
function bosses:tech/automaton/pattern3/main
execute as @s[tag=boss.berserk] run function bosses:tech/automaton/pattern4/main
function bosses:tech/automaton/pattern5/main