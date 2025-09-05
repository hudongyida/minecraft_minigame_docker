# 매 틱마다 보스 능력 실행

# Automaton - - - - - - - - - - -

execute as @e[type=iron_golem,tag=boss.automaton] run function bosses:tech/automaton/tick

function bosses:tech/automaton/pattern2/shockwave/tick
function bosses:tech/automaton/pattern4/shockwave_circular/tick
execute as @e[type=marker,tag=bosses.automaton.pattern5.marker.obstacle] at @s run function bosses:tech/automaton/pattern5/operation/tick
execute as @e[type=block_display,tag=bosses.automaton.pattern5.block_display.obstacle] at @s run function bosses:tech/automaton/pattern5/operation/obstacle/tick

# 오토마톤 사망 감지
execute as @e[type=marker,tag=boss.automaton.marker.AI] run function bosses:tech/automaton/default/death_check with entity @s data

# 3번 패턴 조건 B 마커 - 오토마톤이 4블록 안에 없을 경우 마커 삭제
execute as @e[type=marker,tag=bosses.automaton.pattern3.marker.anger_b] at @s unless entity @e[type=iron_golem,tag=boss.automaton,distance=..4] run kill @s

# Chronomancer - - - - - - - - -



# The Shaman - - - - - - - - - -

# 패턴 기능 실행
execute as @e[type=illusioner,tag=boss.the_shaman] run function bosses:tech/the_shaman/tick

execute as @e[type=marker,tag=bosses.the_shaman.pattern1.mirror_shard.marker] at @s run function bosses:tech/the_shaman/pattern1/mirror_shard/step

function bosses:tech/the_shaman/pattern2/place_mirror/tick
function bosses:tech/the_shaman/pattern2/mirror/tick

execute as @e[type=marker,tag=bosses.the_shaman.pattern3.chalice.marker] at @s run function bosses:tech/the_shaman/pattern3/tick
function bosses:tech/the_shaman/pattern3/type1/tick
function bosses:tech/the_shaman/pattern3/type2/tick
function bosses:tech/the_shaman/pattern3/type3/tick
function bosses:tech/the_shaman/pattern3/type4/tick

execute as @e[type=marker,tag=bosses.the_shaman.pattern4.marker] at @s unless entity @e[type=illusioner,tag=boss.the_shaman,distance=..4] run kill @s
execute as @e[type=illusioner,tag=boss.the_shaman.pattern6.clone] run function bosses:tech/the_shaman/pattern6/clone/tick

# 보스 사망 감지
execute as @e[type=marker,tag=boss.the_shaman.marker.AI] run function bosses:tech/the_shaman/default/death_check with entity @s data

# AI 스켈레톤 화살 삭제
execute as @e[type=arrow] if function bosses:tech/the_shaman/default/arrow_check run kill @s

# T.I.M.E. - - - - - - - - - - -