# 1층의 모든 몬스터 중 하나를 랜덤으로 소환

execute store result score @s monsters.global.summon.randomizer run random value 0..5

execute if score @s monsters.global.summon.randomizer matches 0 run function monsters:summon/floor0/butler_skeleton
execute if score @s monsters.global.summon.randomizer matches 1 run function monsters:summon/floor0/butler_zombie
execute if score @s monsters.global.summon.randomizer matches 2 run function monsters:summon/floor0/carrying_zombie
execute if score @s monsters.global.summon.randomizer matches 3 run function monsters:summon/floor0/gladiator
execute if score @s monsters.global.summon.randomizer matches 4 run function monsters:summon/floor0/plumber_skeleton
execute if score @s monsters.global.summon.randomizer matches 5 run function monsters:summon/floor0/plumber_zombie