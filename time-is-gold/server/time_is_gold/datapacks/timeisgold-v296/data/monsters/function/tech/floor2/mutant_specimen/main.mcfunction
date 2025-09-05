# 실행 인자: 돌연변이 실험체 몬스터 엔티티

execute if score @s monsters.floor2.mutant_specimen.cooldown matches 1.. run scoreboard players remove @s monsters.floor2.mutant_specimen.cooldown 1

# 기절 시 예외 처리
execute if score @s combat.stun matches 1.. run return run scoreboard players operation @s monsters.floor2.mutant_specimen.cooldown = #SYSTEM monsters.floor2.mutant_specimen.cooldown

execute unless score @s monsters.floor2.mutant_specimen.cooldown matches 1.. run function monsters:tech/floor2/mutant_specimen/operation/init
execute if score @s monsters.floor2.mutant_specimen.ability_check matches 1.. run function monsters:tech/floor2/mutant_specimen/operation/step