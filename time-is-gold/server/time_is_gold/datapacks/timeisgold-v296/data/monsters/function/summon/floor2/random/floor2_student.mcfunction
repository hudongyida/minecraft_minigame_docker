# 2층의 모든 실험체 몬스터 중 하나를 랜덤으로 소환

execute store result score @s monsters.global.summon.randomizer run random value 0..1

execute if score @s monsters.global.summon.randomizer matches 0 run function monsters:summon/floor2/student_a
execute if score @s monsters.global.summon.randomizer matches 1 run function monsters:summon/floor2/student_b