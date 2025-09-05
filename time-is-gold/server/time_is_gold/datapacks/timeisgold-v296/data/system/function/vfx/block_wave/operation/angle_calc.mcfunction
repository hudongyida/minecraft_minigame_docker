# radius = 1일 때 6블록 소환, 회전각 = 60도

scoreboard players set @s system.vfx.block_wave.rotation_count 0

# 회전 각도 계산
$execute store result entity @s data.radius double $(step) run scoreboard players get @s system.vfx.block_wave.tick
execute store result score @s system.vfx.block_wave.radius run data get entity @s data.radius 1000
scoreboard players set @s system.vfx.block_wave.angle 60000000
scoreboard players operation @s system.vfx.block_wave.angle /= @s system.vfx.block_wave.radius
execute store result entity @s data.angle double 0.001 run scoreboard players get @s system.vfx.block_wave.angle

# 회전 횟수 계산
execute store result score @s system.vfx.block_wave.rotation run data get entity @s data.radius 1000
scoreboard players operation @s system.vfx.block_wave.rotation *= #6 scoreboardConstant
scoreboard players operation @s system.vfx.block_wave.rotation /= #1000 scoreboardConstant

scoreboard players reset @s system.vfx.block_wave.rotation_count
rotate @s 0 0
execute at @s run function system:vfx/block_wave/operation/rotate with entity @s data