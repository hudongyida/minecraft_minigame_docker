# 실행 인자: 제사장 엔티티 위에 타고 있는 마커

$execute as @s unless entity @e[type=illusioner,scores={entityid=$(entityid)}] on vehicle run function bosses:tech/the_shaman/on_death