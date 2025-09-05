# Release

attribute @s minecraft:scale base set 1.3
item replace entity @s armor.head with air

execute at @s run summon breeze_wind_charge ~ ~ ~ {Motion:[0.0,-1.0,0.0]}
effect give @s minecraft:absorption infinite 4 false
effect give @s minecraft:speed infinite 1 false
effect give @s minecraft:strength infinite 1 false
scoreboard players add @s combat.sink 5

# SFX
execute at @s run playsound minecraft:block.spawner.break hostile @a[distance=..30] ~ ~ ~ 1 1 0
execute at @s run playsound minecraft:entity.zombie.hurt hostile @a ~ ~ ~ 0.6 0.6 0
execute at @s run playsound minecraft:entity.zombie.infect hostile @a ~ ~ ~ 0.6 1 0

# VFX
execute at @s run particle minecraft:block{block_state:"minecraft:trial_spawner"} ~ ~2 ~ .2 .2 .2 0.05 10 force

tag @s remove monsters.specimen.broken
tag @s remove unbroken