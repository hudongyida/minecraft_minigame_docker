# 실행 인자: 에너지 구조체 위에 타고 있는 creeper_check 마커

$execute as @s unless entity @e[type=creeper,scores={entityid=$(entityid)}] if entity $(monsteruuid) on vehicle run function monsters:tech/floor2/energy_construct/on_death
$execute as @s unless entity @e[type=creeper,scores={entityid=$(entityid)}] unless entity $(monsteruuid) at @s run function monsters:tech/floor2/energy_construct/creeper/on_explosion