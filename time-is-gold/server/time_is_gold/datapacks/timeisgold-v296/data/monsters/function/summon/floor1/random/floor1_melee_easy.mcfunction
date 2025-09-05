# 1층의 쉬운 근접 몬스터 중 하나를 랜덤으로 소환

execute store result score @s monsters.global.summon.randomizer run random value 0..1

execute if score @s monsters.global.summon.randomizer matches 1 run function monsters:summon/floor1/mechanical_zombie
execute if score @s monsters.global.summon.randomizer matches 2 run function monsters:summon/floor1/miner_zombie