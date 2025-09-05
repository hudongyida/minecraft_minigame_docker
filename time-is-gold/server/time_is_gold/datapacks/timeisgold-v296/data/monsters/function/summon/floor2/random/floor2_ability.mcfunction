# 2층의 특수 능력 몬스터 중 하나를 랜덤으로 소환

execute store result score @s monsters.global.summon.randomizer run random value 0..9

execute if score @s monsters.global.summon.randomizer matches 0 run function monsters:summon/floor2/crystal_alchemyst
execute if score @s monsters.global.summon.randomizer matches 1 run function monsters:summon/floor2/energy_construct
execute if score @s monsters.global.summon.randomizer matches 2 run function monsters:summon/floor2/lab_guard
execute if score @s monsters.global.summon.randomizer matches 3 run function monsters:summon/floor2/magnetic_field_creeper
execute if score @s monsters.global.summon.randomizer matches 4 run function monsters:summon/floor2/mutant_specimen
execute if score @s monsters.global.summon.randomizer matches 5 run function monsters:summon/floor2/opticamancer
execute if score @s monsters.global.summon.randomizer matches 6 run function monsters:summon/floor2/phaser
execute if score @s monsters.global.summon.randomizer matches 7 run function monsters:summon/floor2/riftmancer
execute if score @s monsters.global.summon.randomizer matches 8 run function monsters:summon/floor2/student_b
execute if score @s monsters.global.summon.randomizer matches 9 run function monsters:summon/floor2/uu_weaponsmith