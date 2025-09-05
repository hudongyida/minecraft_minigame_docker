# 1층의 모든 원거리 몬스터 중 하나를 랜덤으로 소환

execute store result score @s monsters.global.summon.randomizer run random value 0..6

execute if score @s monsters.global.summon.randomizer matches 0 run function monsters:summon/floor1/mechanical_skeleton
execute if score @s monsters.global.summon.randomizer matches 1 run function monsters:summon/floor1/miner_skeleton
execute if score @s monsters.global.summon.randomizer matches 2 run function monsters:summon/floor1/turret
execute if score @s monsters.global.summon.randomizer matches 3 run function monsters:summon/floor1/engineer_c
execute if score @s monsters.global.summon.randomizer matches 4 run function monsters:summon/floor1/autonomy_generator
execute if score @s monsters.global.summon.randomizer matches 5 run function monsters:summon/floor1/forgemaster
execute if score @s monsters.global.summon.randomizer matches 6 run function monsters:summon/floor1/water_supervisor