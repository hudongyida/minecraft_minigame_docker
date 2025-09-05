# 실행 인자: system.marker_clock_temp

$execute as @s at @s run rotate @s ~$(angle) 0
execute as @s at @s run scoreboard players add @s system.vfx.clock_rotate.distance 1
$execute as @s at @s if score @s system.vfx.clock_rotate.distance matches 1..$(distance) run function system:vfx/clock_rotate/clock_particle_distance {angle:$(angle),distance:$(distance)}