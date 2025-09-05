# 실행 인자: 제사장 보스 엔티티

execute as @s[tag=boss.the_shaman.uninitialized] if score @s entityid matches 0.. run function bosses:tech/the_shaman/init

execute as @s[tag=boss.the_shaman.play_cutscene] run function bosses:tech/the_shaman/cutscene/init
execute if score @s bosses.utils.cutscene.tick matches 0.. run function bosses:tech/the_shaman/cutscene/tick
execute if score @s bosses.utils.cutscene.tick matches 0.. run return fail

# 광폭화 상태 관리
execute as @s[tag=!boss.berserk] run function bosses:tech/the_shaman/default/berserk_check

# 보스바 관리
function bosses:tech/utils/bossbar/manager {function:"bosses:tech/utils/bossbar/display_hp", id:0}

function bosses:tech/the_shaman/pattern1/main
function bosses:tech/the_shaman/pattern2/main
function bosses:tech/the_shaman/pattern3/main
function bosses:tech/the_shaman/pattern4/main
function bosses:tech/the_shaman/pattern5/main
execute as @s[tag=boss.berserk] run function bosses:tech/the_shaman/pattern6/main