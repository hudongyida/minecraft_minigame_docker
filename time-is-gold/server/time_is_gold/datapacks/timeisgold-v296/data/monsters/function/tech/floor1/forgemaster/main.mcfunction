# 실행 인자: 용광로 관리자 엔티티

execute if score @s monsters.floor2.apprentice_pyromancer.cooldown matches 1.. run scoreboard players remove @s monsters.floor2.apprentice_pyromancer.cooldown 1
execute if score @s monsters.floor2.apprentice_pyromancer.attack_tick matches 1.. run scoreboard players remove @s monsters.floor2.apprentice_pyromancer.attack_tick 1
execute unless score @s monsters.floor2.apprentice_pyromancer.attack_tick_max matches 0.. run scoreboard players set @s monsters.floor2.apprentice_pyromancer.attack_tick_max 20

# 기절 시 예외 처리
execute if score @s combat.stun matches 1.. run return run scoreboard players reset @s monsters.floor2.apprentice_pyromancer.attack_tick

execute if predicate monsters:player_target unless score @s monsters.floor2.apprentice_pyromancer.cooldown matches 1.. unless score @s monsters.floor2.apprentice_pyromancer.attack_tick matches 0.. run scoreboard players operation @s monsters.floor2.apprentice_pyromancer.attack_tick = @s monsters.floor2.apprentice_pyromancer.attack_tick_max

execute if score @s monsters.floor2.apprentice_pyromancer.attack_tick matches 1.. run function monsters:tech/floor1/forgemaster/prepare_cast
execute if score @s monsters.floor2.apprentice_pyromancer.attack_tick matches 0 run function monsters:tech/floor1/forgemaster/cast