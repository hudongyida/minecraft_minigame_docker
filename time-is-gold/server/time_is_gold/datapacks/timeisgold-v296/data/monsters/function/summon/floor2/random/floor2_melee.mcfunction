# 2층의 모든 근접 몬스터 중 하나를 랜덤으로 소환

execute store result score @s monsters.global.summon.randomizer run random value 0..5

execute if score @s monsters.global.summon.randomizer matches 0 run function monsters:summon/floor2/lab_guard
execute if score @s monsters.global.summon.randomizer matches 1 run function monsters:summon/floor2/mutant_specimen
execute if score @s monsters.global.summon.randomizer matches 2 run function monsters:summon/floor2/phaser
execute if score @s monsters.global.summon.randomizer matches 3 run function monsters:summon/floor2/specimen_zombie
execute if score @s monsters.global.summon.randomizer matches 4 run function monsters:summon/floor2/student_a
execute if score @s monsters.global.summon.randomizer matches 5 run function monsters:summon/floor2/student_b