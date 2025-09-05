# 매 틱마다 몬스터의 특수 능력 실행
# 실행 인자: @e[tag=monster]

### SYSTEM - - - - - - - - - - -

# entity id
function monsters:tech/global/monster_id/step

# warped effect
function monsters:tech/global/effect/warped/tick

# sink effect
function monsters:tech/global/effect/sink/tick

# fragility
function system:combat/stat_manager/fragility

# sink
function system:combat/stat_manager/sink

# Item abilities
function it:item_abilities_on_monster

### Floor 1 - - - - - - - - - - 

# Factory Executive
execute as @s[type=piglin,tag=factory_executive] at @s run function monsters:tech/floor1/factory_executive/main

# Automated Bomb
execute as @s[type=creeper,tag=automated_bomb] at @s run function monsters:tech/floor1/automated_bomb/main

# Acid Zombie
execute as @s[type=zombie,tag=acid_zombie] at @s run function monsters:tech/floor1/acid_zombie/main

# Turret
execute as @s[type=slime,tag=turret_hitbox] at @s run function monsters:tech/floor1/turret/main

# Quality Manager
execute as @s[type=vindicator,tag=quality_manager] at @s run function monsters:tech/floor1/quality_manager/main

# drone_carrier
execute as @s[type=sniffer,tag=drone_carrier] at @s run function monsters:tech/floor1/drone_carrier/main

# engineer_b
execute as @s[type=husk,tag=engineer_b] at @s run function monsters:tech/floor1/engineer_b/main

# engineer_c
execute as @s[type=vindicator,tag=engineer_c] at @s run function monsters:tech/floor1/engineer_c/main

# forgemaster
execute as @s[type=vindicator,tag=forgemaster] at @s run function monsters:tech/floor1/forgemaster/main

# water_supervisor
execute as @s[type=vindicator,tag=water_supervisor] at @s run function monsters:tech/floor1/water_supervisor/main

# miner_zombie
execute as @s[type=zombie,tag=miner_zombie] at @s run function monsters:tech/floor1/miner_zombie/main

### Floor 2 - - - - - - - - - - 

# Specimen Zombie
execute as @s[type=zombie,tag=specimen_zombie] at @s run function monsters:tech/floor2/specimen_zombie/main

# Specimen Skeleton
execute as @s[type=skeleton,tag=specimen_skeleton] at @s run function monsters:tech/floor2/specimen_skeleton/main

## Apprentice Pyromancer
#execute as @s[type=vindicator,tag=apprentice_pyromancer] at @s run function monsters:tech/floor2/apprentice_pyromancer/main
#
## Apprentice Cryomancer
#execute as @s[type=vindicator,tag=apprentice_cryomancer] at @s run function monsters:tech/floor2/apprentice_cryomancer/main

# Energy Construct
execute as @s[type=creeper,tag=energy_construct] at @s run function monsters:tech/floor2/energy_construct/main

# Phaser
execute as @s[type=zombie,tag=phaser] at @s run function monsters:tech/floor2/phaser/main

# magnetic_field_creeper
execute as @s[type=creeper,tag=magnetic_field_creeper] at @s run function monsters:tech/floor2/magnetic_field_creeper/main

# crystal_alchemyst
execute as @s[type=vindicator,tag=crystal_alchemyst] at @s run function monsters:tech/floor2/crystal_alchemyst/main

# mutant_specimen
execute as @s[type=husk,tag=mutant_specimen] at @s run function monsters:tech/floor2/mutant_specimen/main

# riftmancer
execute as @s[type=evoker,tag=riftmancer] at @s run function monsters:tech/floor2/riftmancer/main

# student_b
execute as @s[type=skeleton,tag=student_b] at @s run function monsters:tech/floor2/student_b/main

### Floor 3 - - - - - - - - - - 



### Floor 4 - - - - - - - - - - 
