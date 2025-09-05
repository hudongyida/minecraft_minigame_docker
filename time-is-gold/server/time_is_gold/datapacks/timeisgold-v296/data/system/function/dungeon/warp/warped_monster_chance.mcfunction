# 몬스터 생성 시 뒤틀린 몬스터가 될 확률을 계산해 반환하는 함수

scoreboard players operation #SYSTEM monsters.global.effect.warped_chance = #SYSTEM dungeon.warp
execute if score #SYSTEM dungeon.warp matches 0..19 run scoreboard players operation #SYSTEM monsters.global.effect.warped_chance /= #4 scoreboardConstant

execute if score #SYSTEM dungeon.warp matches 20..39 run scoreboard players remove #SYSTEM monsters.global.effect.warped_chance 20
execute if score #SYSTEM dungeon.warp matches 20..39 run scoreboard players operation #SYSTEM monsters.global.effect.warped_chance /= #4 scoreboardConstant
execute if score #SYSTEM dungeon.warp matches 20..39 run scoreboard players operation #SYSTEM monsters.global.effect.warped_chance += #5 scoreboardConstant

execute if score #SYSTEM dungeon.warp matches 40..59 run scoreboard players remove #SYSTEM monsters.global.effect.warped_chance 40
execute if score #SYSTEM dungeon.warp matches 40..59 run scoreboard players operation #SYSTEM monsters.global.effect.warped_chance /= #4 scoreboardConstant
execute if score #SYSTEM dungeon.warp matches 40..59 run scoreboard players operation #SYSTEM monsters.global.effect.warped_chance += #15 scoreboardConstant

execute if score #SYSTEM dungeon.warp matches 60..79 run scoreboard players remove #SYSTEM monsters.global.effect.warped_chance 60
execute if score #SYSTEM dungeon.warp matches 60..79 run scoreboard players operation #SYSTEM monsters.global.effect.warped_chance /= #2 scoreboardConstant
execute if score #SYSTEM dungeon.warp matches 60..79 run scoreboard players operation #SYSTEM monsters.global.effect.warped_chance += #25 scoreboardConstant

execute if score #SYSTEM dungeon.warp matches 80..99 run scoreboard players remove #SYSTEM monsters.global.effect.warped_chance 80
execute if score #SYSTEM dungeon.warp matches 80..99 run scoreboard players operation #SYSTEM monsters.global.effect.warped_chance /= #2 scoreboardConstant
execute if score #SYSTEM dungeon.warp matches 80..99 run scoreboard players operation #SYSTEM monsters.global.effect.warped_chance += #35 scoreboardConstant

execute if score #SYSTEM dungeon.warp matches 100.. run scoreboard players remove #SYSTEM monsters.global.effect.warped_chance 50
execute if score #SYSTEM dungeon.warp matches 100.. run scoreboard players operation #SYSTEM monsters.global.effect.warped_chance < #100 scoreboardConstant
scoreboard players operation #SYSTEM monsters.global.effect.warped_chance *= #10 scoreboardConstant

scoreboard players operation #SYSTEM monsters.global.effect.warped_chance > #0 scoreboardConstant
return run scoreboard players get #SYSTEM monsters.global.effect.warped_chance