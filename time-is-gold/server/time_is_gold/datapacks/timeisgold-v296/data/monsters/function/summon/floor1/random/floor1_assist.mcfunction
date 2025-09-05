# 1층의 모든 지원형 몬스터 중 하나를 랜덤으로 소환

execute store result score @s monsters.global.summon.randomizer run random value 0..2

execute if score @s monsters.global.summon.randomizer matches 0 run function monsters:summon/floor1/quality_manager
execute if score @s monsters.global.summon.randomizer matches 1 run function monsters:summon/floor1/engineer_c
execute if score @s monsters.global.summon.randomizer matches 2 run function monsters:summon/floor1/drone_carrier