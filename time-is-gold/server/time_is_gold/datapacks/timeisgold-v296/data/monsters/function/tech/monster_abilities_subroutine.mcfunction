# 몬스터 특수능력 중 monster 태그를 갖는 개체가 실행하지 않는 케이스를 처리하는 함수

### Floor 1 - - - - - - - - - - 

# Automated Bomb
execute as @e[type=marker,tag=automated_bomb.marker.creeper_check] at @s run function monsters:tech/floor1/automated_bomb/operation with entity @s data

# Turret
execute as @e[type=marker,tag=turret.death_checker] on vehicle if entity @s[nbt={Health:0f}] on passengers run function monsters:tech/floor1/turret/on_death

# drone_carrier
execute as @e[type=phantom,tag=drone] at @s run function monsters:tech/floor1/drone_carrier/drone_operation with entity @s data
execute as @e[type=marker,tag=drone_carrier.target] run function monsters:tech/floor1/drone_carrier/functions/drone_check with entity @s data

# engineer_c
execute as @e[type=tnt,tag=monsters.engineer_c.tnt] at @s run function monsters:tech/floor1/engineer_c/functions/explode

### Floor 2 - - - - - - - - - - 

# Opticamancer
execute as @e[type=vex] run function monsters:tech/floor2/opticamancer/vex_summon_check
execute as @e[type=evoker_fangs] run function monsters:tech/floor2/opticamancer/fang_summon_check
execute as @e[type=marker,tag=opticamancer.light_orb.marker.direction] run function monsters:tech/floor2/opticamancer/light_orb/marker/step

# Riftmancer
execute as @e[type=vex] run function monsters:tech/floor2/riftmancer/vex_summon_check
execute as @e[type=evoker_fangs] run function monsters:tech/floor2/riftmancer/fang_summon_check
execute as @a[scores={monsters.floor2.riftmancer.damage_amplifier.tick=1..}] run scoreboard players remove @s monsters.floor2.riftmancer.damage_amplifier.tick 1
execute as @e[type=marker,tag=riftmancer.pulse_orb.marker.direction] run function monsters:tech/floor2/riftmancer/pulse_orb/marker/step

# Energy Construct
execute as @e[type=marker,tag=energy_construct.marker.creeper_check] at @s run function monsters:tech/floor2/energy_construct/operation with entity @s data
execute as @a[scores={monsters.floor2.energy_construct.lockdown_tick=1..}] run scoreboard players remove @s monsters.floor2.energy_construct.lockdown_tick 1

# uu_weaponsmith
execute as @e[type=arrow,tag=monsters.arrow.damage_checked] if data entity @s weapon.components."minecraft:custom_data".uu_weaponsmith run function monsters:tech/floor2/uu_weaponsmith/init
#execute as @e[type=arrow,tag=uu_weaponsmith.arrows,nbt={inGround:true}] run kill @s

# crystal_alchemyst
#execute as @e[type=tnt,tag=monsters.crystal_alchemyst.tnt] at @s run function monsters:tech/floor2/crystal_alchemyst/functions/explode

# mutant_specimen
execute as @e[type=marker,tag=mutant_specimen.marker.damage] at @s run function monsters:tech/floor2/mutant_specimen/damage/step

### Floor 3 - - - - - - - - - - 



### Floor 4 - - - - - - - - - - 


