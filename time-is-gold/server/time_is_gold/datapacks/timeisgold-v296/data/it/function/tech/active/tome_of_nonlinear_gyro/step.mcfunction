# 실행 인자: @e[type=marker,tag=item.tome_of_nonlinear_gyro.marker.singularity]

scoreboard players operation @s item.tome_of_nonlinear_gyro.sfx_tick = @s item.tome_of_nonlinear_gyro.tick
scoreboard players operation @s item.tome_of_nonlinear_gyro.sfx_tick %= #2 scoreboardConstant
scoreboard players operation @s item.tome_of_nonlinear_gyro.vfx_tick = @s item.tome_of_nonlinear_gyro.tick
scoreboard players operation @s item.tome_of_nonlinear_gyro.vfx_tick %= #2 scoreboardConstant

execute at @s if score @s item.tome_of_nonlinear_gyro.vfx_tick matches 0 run function it:tech/active/tome_of_nonlinear_gyro/wave/rotation_calc with entity @s data
execute at @s run function system:sfx/dynamic_pitch/init {value:item.tome_of_nonlinear_gyro.tick, max:item.tome_of_nonlinear_gyro.max_tick, function:"it:tech/active/tome_of_nonlinear_gyro/sfx"}

$execute at @s as @e[tag=monster,distance=..10] run function it:tech/active/tome_of_nonlinear_gyro/set_motion with entity $(selfuuid) data

scoreboard players add @s item.tome_of_nonlinear_gyro.tick 1
execute if score @s item.tome_of_nonlinear_gyro.tick >= @s item.tome_of_nonlinear_gyro.max_tick run kill @s