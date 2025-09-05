# 1층의 모든 광부 몬스터 중 하나를 랜덤으로 소환

execute store result score @s monsters.global.summon.randomizer run random value 0..1

execute if score @s monsters.global.summon.randomizer matches 0 run function monsters:summon/floor1/miner_skeleton
execute if score @s monsters.global.summon.randomizer matches 1 run function monsters:summon/floor1/miner_zombie