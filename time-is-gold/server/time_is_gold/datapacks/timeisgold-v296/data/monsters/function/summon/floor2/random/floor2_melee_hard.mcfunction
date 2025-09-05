# 2층의 모든 근접 몬스터 중 하나를 랜덤으로 소환

execute store result score @s monsters.global.summon.randomizer run random value 0..2

execute if score @s monsters.global.summon.randomizer matches 0 run function monsters:summon/floor2/lab_guard
execute if score @s monsters.global.summon.randomizer matches 1 run function monsters:summon/floor2/mutant_specimen
execute if score @s monsters.global.summon.randomizer matches 2 run function monsters:summon/floor2/phaser