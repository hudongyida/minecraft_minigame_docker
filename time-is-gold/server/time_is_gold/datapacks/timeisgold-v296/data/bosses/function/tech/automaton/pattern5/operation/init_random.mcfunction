# 보스 방 내 랜덤한 위치에 낙하물을 소환하는 함수
# 실행 인자: 5번 패턴을 실행 중인 오토마톤 보스 엔티티
# 실행 위치: 보스 방 중심 마커 위치
# $(bossuuid)   - 오토마톤 UUID Token

scoreboard players reset @s bosses.automaton.pattern5.random_pos_count
execute positioned ~ ~ ~ run function bosses:tech/automaton/pattern5/operation/pick_pos

$execute positioned ~ ~ ~ as @e[type=marker,tag=bosses.automaton.pattern5.marker.obstacle_pos_temp,distance=..50] at @s run function bosses:tech/automaton/pattern5/operation/raycast/summon_marker {monsteruuid:"$(bossuuid)"}

kill @e[type=marker,tag=bosses.automaton.pattern5.marker.obstacle_pos_temp]