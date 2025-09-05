# 실행 인자: system.vfx.clock_rotate.marker_temp

$execute as @s at @s run function system:vfx/clock_rotate/clock_particle {radius:$(radius),clock_r:$(clock_r),clock_g:$(clock_g),clock_b:$(clock_b)}

execute as @s at @s run scoreboard players set @s system.vfx.clock_rotate.distance 1
$execute as @s at @s run function system:vfx/clock_rotate/clock_particle_distance {angle:$(angle),distance:$(distance)}
$execute as @s at @s run scoreboard players add @s system.vfx.clock_rotate.count $(distance)
$execute as @s at @s if score @s system.vfx.clock_rotate.count matches 0..$(count) run function system:vfx/clock_rotate/clock_loop {radius:$(radius),angle:$(angle),distance:$(distance),count:$(count),clock_r:$(clock_r),clock_g:$(clock_g),clock_b:$(clock_b)}