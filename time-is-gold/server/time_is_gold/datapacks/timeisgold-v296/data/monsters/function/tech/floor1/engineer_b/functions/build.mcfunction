function monsters:summon/floor1/replica_skeleton
scoreboard players remove @s monsters.floor1.engineer_b.max_build 1
scoreboard players set @s monsters.floor1.engineer_b.build 100

# SFX
playsound entity.iron_golem.repair neutral @a ~ ~ ~ 0.8 1.2 0

# VFX
particle cloud ~ ~ ~ 0.3 0.5 0.3 0.5 5 force
particle ash ~ ~ ~ 0.3 0.5 0.3 0.5 5 force