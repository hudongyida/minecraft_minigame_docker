# 2층의 원거리 공격 몬스터 중 하나를 랜덤으로 소환

execute store result score @s monsters.global.summon.randomizer run random value 0..2

execute if score @s monsters.global.summon.randomizer matches 0 run function monsters:summon/floor2/crystal_alchemyst
execute if score @s monsters.global.summon.randomizer matches 1 run function monsters:summon/floor2/specimen_skeleton
execute if score @s monsters.global.summon.randomizer matches 2 run function monsters:summon/floor2/uu_weaponsmith