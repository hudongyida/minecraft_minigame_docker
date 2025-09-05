# 플레이어의 사망 원인을 저장하는 함수
# 0 - 기본값
# 1 - 일반 몬스터
# 2 - 보스 몬스터
# 3 - 희생에 의한 피격

scoreboard players set @s system.gamemanager.player_death.cause 0

### Floor 1

execute as @s[advancements={system:gamemanager/player_death/floor1/acid_zombie=true}] run scoreboard players set @s system.gamemanager.player_death.cause 1
execute as @s[advancements={system:gamemanager/player_death/floor1/acid_zombie=true}] run data modify storage timeisgold:function_api stack[-1].cause set value "Acid Zombie"

execute as @s[advancements={system:gamemanager/player_death/floor1/automated_bomb=true}] run scoreboard players set @s system.gamemanager.player_death.cause 1
execute as @s[advancements={system:gamemanager/player_death/floor1/automated_bomb=true}] run data modify storage timeisgold:function_api stack[-1].cause set value "Automated Bomb"

execute as @s[advancements={system:gamemanager/player_death/floor1/autonomy_generator=true}] run scoreboard players set @s system.gamemanager.player_death.cause 1
execute as @s[advancements={system:gamemanager/player_death/floor1/autonomy_generator=true}] run data modify storage timeisgold:function_api stack[-1].cause set value "Autonomy Generator"

execute as @s[advancements={system:gamemanager/player_death/floor1/engineer_b=true}] run scoreboard players set @s system.gamemanager.player_death.cause 1
execute as @s[advancements={system:gamemanager/player_death/floor1/engineer_b=true}] run data modify storage timeisgold:function_api stack[-1].cause set value "Engineer B"

execute as @s[advancements={system:gamemanager/player_death/floor1/engineer_c=true}] run scoreboard players set @s system.gamemanager.player_death.cause 1
execute as @s[advancements={system:gamemanager/player_death/floor1/engineer_c=true}] run data modify storage timeisgold:function_api stack[-1].cause set value "Engineer C"

execute as @s[advancements={system:gamemanager/player_death/floor1/factory_executive=true}] run scoreboard players set @s system.gamemanager.player_death.cause 1
execute as @s[advancements={system:gamemanager/player_death/floor1/factory_executive=true}] run data modify storage timeisgold:function_api stack[-1].cause set value "Factory Executive"

execute as @s[advancements={system:gamemanager/player_death/floor1/forgemaster=true}] run scoreboard players set @s system.gamemanager.player_death.cause 1
execute as @s[advancements={system:gamemanager/player_death/floor1/forgemaster=true}] run data modify storage timeisgold:function_api stack[-1].cause set value "Forgemaster"

execute as @s[advancements={system:gamemanager/player_death/floor1/mechanical_skeleton=true}] run scoreboard players set @s system.gamemanager.player_death.cause 1
execute as @s[advancements={system:gamemanager/player_death/floor1/mechanical_skeleton=true}] run data modify storage timeisgold:function_api stack[-1].cause set value "Mechanical Skeleton"

execute as @s[advancements={system:gamemanager/player_death/floor1/mechanical_zombie=true}] run scoreboard players set @s system.gamemanager.player_death.cause 1
execute as @s[advancements={system:gamemanager/player_death/floor1/mechanical_zombie=true}] run data modify storage timeisgold:function_api stack[-1].cause set value "Mechanical Zombie"

execute as @s[advancements={system:gamemanager/player_death/floor1/miner_skeleton=true}] run scoreboard players set @s system.gamemanager.player_death.cause 1
execute as @s[advancements={system:gamemanager/player_death/floor1/miner_skeleton=true}] run data modify storage timeisgold:function_api stack[-1].cause set value "Miner Skeleton"

execute as @s[advancements={system:gamemanager/player_death/floor1/miner_zombie=true}] run scoreboard players set @s system.gamemanager.player_death.cause 1
execute as @s[advancements={system:gamemanager/player_death/floor1/miner_zombie=true}] run data modify storage timeisgold:function_api stack[-1].cause set value "Miner Zombie"

execute as @s[advancements={system:gamemanager/player_death/floor1/quality_manager=true}] run scoreboard players set @s system.gamemanager.player_death.cause 1
execute as @s[advancements={system:gamemanager/player_death/floor1/quality_manager=true}] run data modify storage timeisgold:function_api stack[-1].cause set value "Quality Manager"

execute as @s[advancements={system:gamemanager/player_death/floor1/replica_skeleton=true}] run scoreboard players set @s system.gamemanager.player_death.cause 1
execute as @s[advancements={system:gamemanager/player_death/floor1/replica_skeleton=true}] run data modify storage timeisgold:function_api stack[-1].cause set value "Replica Skeleton"

execute as @s[advancements={system:gamemanager/player_death/floor1/supply_worker=true}] run scoreboard players set @s system.gamemanager.player_death.cause 1
execute as @s[advancements={system:gamemanager/player_death/floor1/supply_worker=true}] run data modify storage timeisgold:function_api stack[-1].cause set value "Supply Worker"

execute as @s[advancements={system:gamemanager/player_death/floor1/turret=true}] run scoreboard players set @s system.gamemanager.player_death.cause 1
execute as @s[advancements={system:gamemanager/player_death/floor1/turret=true}] run data modify storage timeisgold:function_api stack[-1].cause set value "Turret"

### Floor 2

execute as @s[advancements={system:gamemanager/player_death/floor2/apprentice_cryomancer=true}] run scoreboard players set @s system.gamemanager.player_death.cause 1
execute as @s[advancements={system:gamemanager/player_death/floor2/apprentice_cryomancer=true}] run data modify storage timeisgold:function_api stack[-1].cause set value "Apprentice Cryomancer"

execute as @s[advancements={system:gamemanager/player_death/floor2/apprentice_pyromancer=true}] run scoreboard players set @s system.gamemanager.player_death.cause 1
execute as @s[advancements={system:gamemanager/player_death/floor2/apprentice_pyromancer=true}] run data modify storage timeisgold:function_api stack[-1].cause set value "Apprentice Pyromancer"

execute as @s[advancements={system:gamemanager/player_death/floor2/crystal_alchemyst=true}] run scoreboard players set @s system.gamemanager.player_death.cause 1
execute as @s[advancements={system:gamemanager/player_death/floor2/crystal_alchemyst=true}] run data modify storage timeisgold:function_api stack[-1].cause set value "Crystal Alchemyst"

execute as @s[advancements={system:gamemanager/player_death/floor2/energy_construct=true}] run scoreboard players set @s system.gamemanager.player_death.cause 1
execute as @s[advancements={system:gamemanager/player_death/floor2/energy_construct=true}] run data modify storage timeisgold:function_api stack[-1].cause set value "Energy Construct"

execute as @s[advancements={system:gamemanager/player_death/floor2/lab_guard=true}] run scoreboard players set @s system.gamemanager.player_death.cause 1
execute as @s[advancements={system:gamemanager/player_death/floor2/lab_guard=true}] run data modify storage timeisgold:function_api stack[-1].cause set value "Lab Guard"

execute as @s[advancements={system:gamemanager/player_death/floor2/magnetic_field_creeper=true}] run scoreboard players set @s system.gamemanager.player_death.cause 1
execute as @s[advancements={system:gamemanager/player_death/floor2/magnetic_field_creeper=true}] run data modify storage timeisgold:function_api stack[-1].cause set value "Magnetic Field Creeper"

execute as @s[advancements={system:gamemanager/player_death/floor2/mutant_specimen=true}] run scoreboard players set @s system.gamemanager.player_death.cause 1
execute as @s[advancements={system:gamemanager/player_death/floor2/mutant_specimen=true}] run data modify storage timeisgold:function_api stack[-1].cause set value "Mutant Specimen"

execute as @s[advancements={system:gamemanager/player_death/floor2/opticamancer=true}] run scoreboard players set @s system.gamemanager.player_death.cause 1
execute as @s[advancements={system:gamemanager/player_death/floor2/opticamancer=true}] run data modify storage timeisgold:function_api stack[-1].cause set value "Opticamancer"

execute as @s[advancements={system:gamemanager/player_death/floor2/phaser=true}] run scoreboard players set @s system.gamemanager.player_death.cause 1
execute as @s[advancements={system:gamemanager/player_death/floor2/phaser=true}] run data modify storage timeisgold:function_api stack[-1].cause set value "Phaser"

execute as @s[advancements={system:gamemanager/player_death/floor2/riftmancer=true}] run scoreboard players set @s system.gamemanager.player_death.cause 1
execute as @s[advancements={system:gamemanager/player_death/floor2/riftmancer=true}] run data modify storage timeisgold:function_api stack[-1].cause set value "Riftmancer"

execute as @s[advancements={system:gamemanager/player_death/floor2/specimen_skeleton=true}] run scoreboard players set @s system.gamemanager.player_death.cause 1
execute as @s[advancements={system:gamemanager/player_death/floor2/specimen_skeleton=true}] run data modify storage timeisgold:function_api stack[-1].cause set value "Specimen Skeleton"

execute as @s[advancements={system:gamemanager/player_death/floor2/specimen_zombie=true}] run scoreboard players set @s system.gamemanager.player_death.cause 1
execute as @s[advancements={system:gamemanager/player_death/floor2/specimen_zombie=true}] run data modify storage timeisgold:function_api stack[-1].cause set value "Specimen Zombie"

execute as @s[advancements={system:gamemanager/player_death/floor2/student_a=true}] run scoreboard players set @s system.gamemanager.player_death.cause 1
execute as @s[advancements={system:gamemanager/player_death/floor2/student_a=true}] run data modify storage timeisgold:function_api stack[-1].cause set value "Student A"

execute as @s[advancements={system:gamemanager/player_death/floor2/student_b=true}] run scoreboard players set @s system.gamemanager.player_death.cause 1
execute as @s[advancements={system:gamemanager/player_death/floor2/student_b=true}] run data modify storage timeisgold:function_api stack[-1].cause set value "Student B"

execute as @s[advancements={system:gamemanager/player_death/floor2/uu_weaponsmith=true}] run scoreboard players set @s system.gamemanager.player_death.cause 1
execute as @s[advancements={system:gamemanager/player_death/floor2/uu_weaponsmith=true}] run data modify storage timeisgold:function_api stack[-1].cause set value "UU-Weaponsmith"

### Bosses

execute as @s[advancements={system:gamemanager/player_death/boss/automaton=true}] run scoreboard players set @s system.gamemanager.player_death.cause 2
execute as @s[advancements={system:gamemanager/player_death/boss/automaton=true}] run data modify storage timeisgold:function_api stack[-1].cause set value "Automaton"

execute as @s[advancements={system:gamemanager/player_death/boss/the_shaman=true}] run scoreboard players set @s system.gamemanager.player_death.cause 2
execute as @s[advancements={system:gamemanager/player_death/boss/the_shaman=true}] run data modify storage timeisgold:function_api stack[-1].cause set value "The Shaman"

### Sacrifice

execute as @s[scores={item.sacrifice.target=0..}] run scoreboard players set @s system.gamemanager.player_death.cause 3