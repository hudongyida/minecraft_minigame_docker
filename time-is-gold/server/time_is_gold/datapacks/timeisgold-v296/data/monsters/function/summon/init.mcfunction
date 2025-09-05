# 실행 인자: dungeon.summon_pos 태그가 붙은 몬스터 소환 갑옷 거치대 

### Floor 0 - - - - - - - - - -

execute as @s[tag=butler_skeleton] run function monsters:summon/floor0/butler_skeleton
execute as @s[tag=butler_zombie] run function monsters:summon/floor0/butler_zombie
execute as @s[tag=carrying_zombie] run function monsters:summon/floor0/carrying_zombie
execute as @s[tag=gladiator] run function monsters:summon/floor0/gladiator
execute as @s[tag=plumber_skeleton] run function monsters:summon/floor0/plumber_skeleton
execute as @s[tag=plumber_zombie] run function monsters:summon/floor0/plumber_zombie

execute at @s run function monsters:summon/floor0/random/init

### Floor 1 - - - - - - - - - - 

execute as @s[tag=acid_zombie] at @s run function monsters:summon/floor1/acid_zombie
execute as @s[tag=automated_bomb] at @s run function monsters:summon/floor1/automated_bomb
execute as @s[tag=autonomy_generator] at @s run function monsters:summon/floor1/autonomy_generator
execute as @s[tag=drone_carrier] at @s run function monsters:summon/floor1/drone_carrier
execute as @s[tag=engineer_b] at @s run function monsters:summon/floor1/engineer_b
execute as @s[tag=engineer_c] at @s run function monsters:summon/floor1/engineer_c
execute as @s[tag=factory_executive] at @s run function monsters:summon/floor1/factory_executive
execute as @s[tag=forgemaster] at @s run function monsters:summon/floor1/forgemaster
execute as @s[tag=mechanical_skeleton] at @s run function monsters:summon/floor1/mechanical_skeleton
execute as @s[tag=mechanical_zombie] at @s run function monsters:summon/floor1/mechanical_zombie
execute as @s[tag=miner_skeleton] at @s run function monsters:summon/floor1/miner_skeleton
execute as @s[tag=miner_zombie] at @s run function monsters:summon/floor1/miner_zombie
execute as @s[tag=quality_manager] at @s run function monsters:summon/floor1/quality_manager
execute as @s[tag=supply_worker] at @s run function monsters:summon/floor1/supply_worker
execute as @s[tag=turret] at @s run function monsters:summon/floor1/turret
execute as @s[tag=water_supervisor] at @s run function monsters:summon/floor1/water_supervisor

execute at @s run function monsters:summon/floor1/random/init

### Floor 2 - - - - - - - - - - 

#execute as @s[tag=apprentice_cryomancer] at @s run function monsters:summon/floor2/apprentice_cryomancer
#execute as @s[tag=apprentice_pyromancer] at @s run function monsters:summon/floor2/apprentice_pyromancer
execute as @s[tag=crystal_alchemyst] at @s run function monsters:summon/floor2/crystal_alchemyst
execute as @s[tag=energy_construct] at @s run function monsters:summon/floor2/energy_construct
execute as @s[tag=lab_guard] at @s run function monsters:summon/floor2/lab_guard
execute as @s[tag=magnetic_field_creeper] at @s run function monsters:summon/floor2/magnetic_field_creeper
execute as @s[tag=mutant_specimen] at @s run function monsters:summon/floor2/mutant_specimen
execute as @s[tag=opticamancer] at @s run function monsters:summon/floor2/opticamancer
execute as @s[tag=phaser] at @s run function monsters:summon/floor2/phaser
execute as @s[tag=riftmancer] at @s run function monsters:summon/floor2/riftmancer
execute as @s[tag=specimen_skeleton] at @s run function monsters:summon/floor2/specimen_skeleton
execute as @s[tag=specimen_zombie] at @s run function monsters:summon/floor2/specimen_zombie
execute as @s[tag=student_a] at @s run function monsters:summon/floor2/student_a
execute as @s[tag=student_b] at @s run function monsters:summon/floor2/student_b
execute as @s[tag=uu_weaponsmith] at @s run function monsters:summon/floor2/uu_weaponsmith

execute at @s run function monsters:summon/floor2/random/init

### Floor 3 - - - - - - - - - - 



### Floor 4 - - - - - - - - - - 


# 뒤틀림 확률 계산
execute store result score @s monsters.global.effect.warped_chance run function system:dungeon/warp/warped_monster_chance
execute store result score @s monsters.global.effect.warped_chance_randomizer run random value 0..999
execute if score @s monsters.global.effect.warped_chance_randomizer < @s monsters.global.effect.warped_chance at @s run tag @n[tag=monster,distance=..0.5] add monster.warped

# 방 번호 부여
execute at @s run scoreboard players operation @n[tag=monster,distance=..0.5] dungeon.room_id = @s dungeon.room_id