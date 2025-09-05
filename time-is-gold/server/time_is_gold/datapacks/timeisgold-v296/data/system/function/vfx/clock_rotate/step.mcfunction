# 실행 인자: system.vfx.clock_rotate.marker
# angle     : 매 틱마다 회전해야 하는 각도
# radius    : 타이머의 반지름
# distance  : 타이머 파티클 간의 간격(1 이상)

$execute as @s at @s run summon marker ~ ~ ~ {Tags:[system.vfx.clock_rotate.marker_temp],data:{radius:$(radius),angle:$(angle),count:0,distance:$(distance),clock_r:$(clock_r),clock_g:$(clock_g),clock_b:$(clock_b)}}
execute as @s at @s store result entity @n[type=marker,tag=system.vfx.clock_rotate.marker_temp] data.count int 1 run scoreboard players get @s system.vfx.clock_rotate.tick

execute as @s at @s run scoreboard players set @n[type=marker,tag=system.vfx.clock_rotate.marker_temp] system.vfx.clock_rotate.count 0
execute at @s as @n[type=marker,tag=system.vfx.clock_rotate.marker_temp] run function system:vfx/clock_rotate/clock_loop with entity @s data
kill @n[type=marker,tag=system.vfx.clock_rotate.marker_temp,distance=..0.5]