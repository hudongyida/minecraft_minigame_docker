# 실행 인자: 오토마톤 엔티티 위에 타고 있는 마커

$execute as @s unless entity @e[type=iron_golem,scores={entityid=$(entityid)}] on vehicle run function bosses:tech/automaton/on_death