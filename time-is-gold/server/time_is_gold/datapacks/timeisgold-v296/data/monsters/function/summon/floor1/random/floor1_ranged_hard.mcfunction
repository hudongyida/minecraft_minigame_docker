# 1층의 모든 원거리 몬스터 중 하나를 랜덤으로 소환

execute store result score @s monsters.global.summon.randomizer run random value 0..3

execute if score @s monsters.global.summon.randomizer matches 0 run function monsters:summon/floor1/turret
execute if score @s monsters.global.summon.randomizer matches 1 run function monsters:summon/floor1/engineer_c
execute if score @s monsters.global.summon.randomizer matches 2 run function monsters:summon/floor1/forgemaster
execute if score @s monsters.global.summon.randomizer matches 3 run function monsters:summon/floor1/water_supervisor