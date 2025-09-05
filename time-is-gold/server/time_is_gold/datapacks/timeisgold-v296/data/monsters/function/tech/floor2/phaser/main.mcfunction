# 실행 인자: 페이저 엔티티

execute if score @s monsters.floor2.phaser.cooldown matches 1.. run scoreboard players remove @s monsters.floor2.phaser.cooldown 1

# 기절 시 예외처리
execute if score @s combat.stun matches 1.. unless score @s monsters.floor2.phaser.ability_delay matches 0.. unless score @s monsters.floor2.phaser.ability_tick matches 0.. run scoreboard players set @s monsters.floor2.phaser.cooldown 100

execute unless score @s monsters.floor2.phaser.cooldown matches 1.. if predicate monsters:floor2/phaser_target run function monsters:tech/floor2/phaser/operation/start_delay

execute if score @s monsters.floor2.phaser.ability_delay matches 1.. run scoreboard players remove @s monsters.floor2.phaser.ability_delay 1
execute if score @s monsters.floor2.phaser.ability_delay matches 0 run function monsters:tech/floor2/phaser/operation/activate

execute if score @s monsters.floor2.phaser.ability_tick matches 1.. at @s run function monsters:tech/floor2/phaser/operation/step
execute if score @s monsters.floor2.phaser.ability_tick matches 0 run function monsters:tech/floor2/phaser/operation/deactivate