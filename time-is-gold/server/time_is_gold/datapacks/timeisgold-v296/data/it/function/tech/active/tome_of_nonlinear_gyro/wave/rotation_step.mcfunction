$execute as @n[type=marker,tag=item.tome_of_nonlinear_gyro.marker.summon_display.$(selfuuid)] at @s positioned ^ ^ ^$(radius) run particle witch ~ ~ ~ 0 0 0 4 1 force
$execute if predicate it:25pc as @n[type=marker,tag=item.tome_of_nonlinear_gyro.marker.summon_display.$(selfuuid)] at @s positioned ^ ^ ^$(radius) run function it:tech/active/tome_of_nonlinear_gyro/wave/summon_display
$execute as @n[type=marker,tag=item.tome_of_nonlinear_gyro.marker.summon_display.$(selfuuid)] at @s run rotate @s ~$(angle) ~

execute as @s run scoreboard players add @s item.tome_of_nonlinear_gyro.rotation_count 1
execute as @s if score @s item.tome_of_nonlinear_gyro.rotation_count <= @s item.tome_of_nonlinear_gyro.wave_rotation run function it:tech/active/tome_of_nonlinear_gyro/wave/rotation_step with entity @s data