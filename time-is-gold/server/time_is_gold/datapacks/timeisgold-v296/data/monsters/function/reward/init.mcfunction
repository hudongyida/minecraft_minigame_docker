# 몬스터 처치 시간 보상을 지급하는 함수
# 실행 인자: 처치당한 몬스터

data modify storage timeisgold:function_api stack append value {value:0}

### Floor 0 - - - - - - - - - -

execute as @s[tag=butler_skeleton] run data modify storage timeisgold:function_api stack[-1].value set value 100
execute as @s[tag=butler_zombie] run data modify storage timeisgold:function_api stack[-1].value set value 50
execute as @s[tag=carrying_zombie] run data modify storage timeisgold:function_api stack[-1].value set value 50
execute as @s[tag=gladiator] run data modify storage timeisgold:function_api stack[-1].value set value 200
execute as @s[tag=plumber_skeleton] run data modify storage timeisgold:function_api stack[-1].value set value 100
execute as @s[tag=plumber_zombie] run data modify storage timeisgold:function_api stack[-1].value set value 50

### Floor 1 - - - - - - - - - - 

execute as @s[tag=acid_zombie] run data modify storage timeisgold:function_api stack[-1].value set value 200
execute as @s[tag=automated_bomb] run data modify storage timeisgold:function_api stack[-1].value set value 200
execute as @s[tag=autonomy_generator] run data modify storage timeisgold:function_api stack[-1].value set value 150
execute as @s[tag=drone_carrier] run data modify storage timeisgold:function_api stack[-1].value set value 350
execute as @s[tag=engineer_b] run data modify storage timeisgold:function_api stack[-1].value set value 250
execute as @s[tag=engineer_c] run data modify storage timeisgold:function_api stack[-1].value set value 200
execute as @s[tag=factory_executive] run data modify storage timeisgold:function_api stack[-1].value set value 350
execute as @s[tag=forgemaster] run data modify storage timeisgold:function_api stack[-1].value set value 200
execute as @s[tag=water_supervisor] run data modify storage timeisgold:function_api stack[-1].value set value 200
execute as @s[tag=mechanical_skeleton] run data modify storage timeisgold:function_api stack[-1].value set value 150
execute as @s[tag=mechanical_zombie] run data modify storage timeisgold:function_api stack[-1].value set value 100
execute as @s[tag=miner_skeleton] run data modify storage timeisgold:function_api stack[-1].value set value 150
execute as @s[tag=miner_zombie] run data modify storage timeisgold:function_api stack[-1].value set value 100
execute as @s[tag=quality_manager] run data modify storage timeisgold:function_api stack[-1].value set value 150
execute as @s[tag=supply_worker] run data modify storage timeisgold:function_api stack[-1].value set value 200
execute as @s[tag=turret] run data modify storage timeisgold:function_api stack[-1].value set value 250

### Floor 2 - - - - - - - - - - 

#execute as @s[tag=apprentice_cryomancer] run function monsters:reward/floor2/apprentice_cryomancer
#execute as @s[tag=apprentice_pyromancer] run function monsters:reward/floor2/apprentice_pyromancer
execute as @s[tag=crystal_alchemyst] run data modify storage timeisgold:function_api stack[-1].value set value 200
execute as @s[tag=energy_construct] run data modify storage timeisgold:function_api stack[-1].value set value 200
execute as @s[tag=lab_guard] run data modify storage timeisgold:function_api stack[-1].value set value 250
execute as @s[tag=magnetic_field_creeper] run data modify storage timeisgold:function_api stack[-1].value set value 200
execute as @s[tag=mutant_specimen] run data modify storage timeisgold:function_api stack[-1].value set value 300
execute as @s[tag=opticamancer] run data modify storage timeisgold:function_api stack[-1].value set value 200
execute as @s[tag=phaser] run data modify storage timeisgold:function_api stack[-1].value set value 200
execute as @s[tag=riftmancer] run data modify storage timeisgold:function_api stack[-1].value set value 200
execute as @s[tag=specimen_skeleton] run data modify storage timeisgold:function_api stack[-1].value set value 120
execute as @s[tag=specimen_zombie] run data modify storage timeisgold:function_api stack[-1].value set value 120
execute as @s[tag=student_a] run data modify storage timeisgold:function_api stack[-1].value set value 100
execute as @s[tag=student_b] run data modify storage timeisgold:function_api stack[-1].value set value 100
execute as @s[tag=uu_weaponsmith] run data modify storage timeisgold:function_api stack[-1].value set value 300

### Floor 3 - - - - - - - - - - 



### Floor 4 - - - - - - - - - - 



### MISCELLANEOUS - - - - - - -

execute as @s[tag=item.spirit_retriever.spirit] on attacker run function it:tech/melee/spirit_retriever/spirit_reward

execute on attacker run function monsters:reward/value_weight
execute as @s on attacker run function monsters:tech/global/utils/reward/init with storage timeisgold:function_api stack[-1]

data remove storage timeisgold:function_api stack[-1]