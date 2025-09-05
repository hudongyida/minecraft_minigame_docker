# 1층의 모든 몬스터 중 하나를 랜덤으로 소환

execute store result score @s monsters.global.summon.randomizer run random value 0..14

execute if score @s monsters.global.summon.randomizer matches 0 run function monsters:summon/floor1/acid_zombie
execute if score @s monsters.global.summon.randomizer matches 1 run function monsters:summon/floor1/automated_bomb
execute if score @s monsters.global.summon.randomizer matches 2 run function monsters:summon/floor1/factory_executive
execute if score @s monsters.global.summon.randomizer matches 3 run function monsters:summon/floor1/forgemaster
execute if score @s monsters.global.summon.randomizer matches 4 run function monsters:summon/floor1/mechanical_skeleton
execute if score @s monsters.global.summon.randomizer matches 5 run function monsters:summon/floor1/mechanical_zombie
execute if score @s monsters.global.summon.randomizer matches 6 run function monsters:summon/floor1/miner_skeleton
execute if score @s monsters.global.summon.randomizer matches 7 run function monsters:summon/floor1/miner_zombie
execute if score @s monsters.global.summon.randomizer matches 8 run function monsters:summon/floor1/quality_manager
execute if score @s monsters.global.summon.randomizer matches 9 run function monsters:summon/floor1/turret
execute if score @s monsters.global.summon.randomizer matches 10 run function monsters:summon/floor1/autonomy_generator
execute if score @s monsters.global.summon.randomizer matches 11 run function monsters:summon/floor1/drone_carrier
execute if score @s monsters.global.summon.randomizer matches 12 run function monsters:summon/floor1/engineer_b
execute if score @s monsters.global.summon.randomizer matches 13 run function monsters:summon/floor1/engineer_c
execute if score @s monsters.global.summon.randomizer matches 14 run function monsters:summon/floor1/supply_worker
execute if score @s monsters.global.summon.randomizer matches 14 run function monsters:summon/floor1/water_supervisor