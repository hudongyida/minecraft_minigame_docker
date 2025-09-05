# 실행 인자: 자동 폭탄 인형 위에 타고 있는 creeper_check 마커

$execute as @s unless entity @e[type=creeper,scores={entityid=$(entityid)}] if entity $(monsteruuid) on vehicle run function monsters:tech/floor1/automated_bomb/on_death
$execute as @s unless entity @e[type=creeper,scores={entityid=$(entityid)}] unless entity $(monsteruuid) at @s run function monsters:tech/floor1/automated_bomb/creeper/on_explosion