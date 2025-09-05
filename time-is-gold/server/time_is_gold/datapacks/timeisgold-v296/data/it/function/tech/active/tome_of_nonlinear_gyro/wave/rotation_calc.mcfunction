# radius = 1일 때 6블록 소환, 회전각 = 60도

execute as @s run scoreboard players set @s item.tome_of_nonlinear_gyro.rotation_count 0

# 회전 각도 계산
scoreboard players operation @s item.tome_of_nonlinear_gyro.wave_angle_temp = @s item.tome_of_nonlinear_gyro.max_tick
scoreboard players operation @s item.tome_of_nonlinear_gyro.wave_angle_temp -= @s item.tome_of_nonlinear_gyro.tick
$execute as @s store result entity @s data.radius double $(step) run scoreboard players get @s item.tome_of_nonlinear_gyro.wave_angle_temp
execute as @s store result score @s item.tome_of_nonlinear_gyro.wave_radius run data get entity @s data.radius 1000
execute as @s run scoreboard players set @s item.tome_of_nonlinear_gyro.wave_angle_temp 60000000
execute as @s run scoreboard players operation @s item.tome_of_nonlinear_gyro.wave_angle_temp /= @s item.tome_of_nonlinear_gyro.wave_radius
execute as @s store result entity @s data.angle double 0.001 run scoreboard players get @s item.tome_of_nonlinear_gyro.wave_angle_temp

# 회전 횟수 계산
execute as @s store result score @s item.tome_of_nonlinear_gyro.wave_rotation run data get entity @s data.radius 1000
execute as @s run scoreboard players operation @s item.tome_of_nonlinear_gyro.wave_rotation *= #6 scoreboardConstant
execute as @s run scoreboard players operation @s item.tome_of_nonlinear_gyro.wave_rotation /= #1000 scoreboardConstant

$execute as @s at @s run summon marker ~ ~ ~ {Tags:["item.tome_of_nonlinear_gyro.marker.summon_display.$(selfuuid)"]}
execute as @s at @s run function it:tech/active/tome_of_nonlinear_gyro/wave/rotation_step with entity @s data
$kill @e[type=marker,tag=item.tome_of_nonlinear_gyro.marker.summon_display.$(selfuuid)]