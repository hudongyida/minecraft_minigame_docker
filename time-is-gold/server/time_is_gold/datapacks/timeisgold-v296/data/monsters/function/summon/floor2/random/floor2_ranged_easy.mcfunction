# 2층의 쉬운 원거리 공격 몬스터 중 하나를 랜덤으로 소환

#execute store result score @s monsters.global.summon.randomizer run random value 0..4

#execute if score @s monsters.global.summon.randomizer matches 0 run function monsters:summon/floor2/specimen_skeleton
function monsters:summon/floor2/specimen_skeleton