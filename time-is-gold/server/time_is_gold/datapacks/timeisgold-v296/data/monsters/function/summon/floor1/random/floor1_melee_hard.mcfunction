# 1층의 어려운 근접 몬스터 중 하나를 랜덤으로 소환

execute store result score @s monsters.global.summon.randomizer run random value 0..3

execute if score @s monsters.global.summon.randomizer matches 0 run function monsters:summon/floor1/acid_zombie
execute if score @s monsters.global.summon.randomizer matches 1 run function monsters:summon/floor1/factory_executive
execute if score @s monsters.global.summon.randomizer matches 2 run function monsters:summon/floor1/supply_worker
execute if score @s monsters.global.summon.randomizer matches 3 run function monsters:summon/floor1/engineer_b