# 2층의 마법사 몬스터 중 하나를 랜덤으로 소환

execute store result score @s monsters.global.summon.randomizer run random value 0..1

execute if score @s monsters.global.summon.randomizer matches 2 run function monsters:summon/floor2/opticamancer
execute if score @s monsters.global.summon.randomizer matches 3 run function monsters:summon/floor2/riftmancer