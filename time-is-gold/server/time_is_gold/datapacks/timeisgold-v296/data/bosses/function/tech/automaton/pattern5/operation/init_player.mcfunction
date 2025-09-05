# 플레이어 위치에 낙하물을 소환하는 함수
# 실행 인자: 5번 패턴을 실행 중인 오토마톤 보스 엔티티
# 실행 위치: 보스 방 중심 마커 위치
# $(bossuuid)   - 오토마톤 UUID Token

$data modify storage timeisgold:function_api stack append value {path:"bosses:tech/automaton/pattern5/operation", initfunction:none, tickfunction:debug, hitfunction:none, endfunction:summon_marker,\
                                                                monsteruuid:"$(bossuuid)", target:-1, speed:0.5, hitbox_1:0.15, hitbox_2:0.7, hitbox_3:0.85, wall:1, hitend:0, step:60, system:1}
execute positioned ~ ~ ~ as @a[predicate=system:player,distance=..50] at @s run function bosses:tech/automaton/pattern5/operation/raycast_call
data remove storage timeisgold:function_api stack[-1]