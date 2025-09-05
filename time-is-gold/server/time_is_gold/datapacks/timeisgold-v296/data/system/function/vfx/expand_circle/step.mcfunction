# 실행 인자: @e[type=marker,tag=system.vfx.expand_circle.marker]

execute as @s run scoreboard players set @s system.vfx.expand_circle.angle 360
execute as @s run scoreboard players operation @s system.vfx.expand_circle.angle /= @s system.vfx.expand_circle.repeat

# angle = 10 , repeat = 36, march = 1

#say store data!

execute as @s store result entity @s data.angle int 1 run scoreboard players get @s system.vfx.expand_circle.angle
execute as @s store result entity @s data.radius float 0.1 run scoreboard players get @s system.vfx.expand_circle.radius

function system:vfx/expand_circle/draw_circle with entity @s data
$scoreboard players add @s system.vfx.expand_circle.radius $(step)

#say i add march!

#scoreboard players set @s[scores={system.vfx.expand_circle.wait=0}] system.vfx.expand_circle.wait 1
scoreboard players operation @s system.vfx.expand_circle.repeat += #10 scoreboardConstant
execute as @s if score @s system.vfx.expand_circle.max_radius < @s system.vfx.expand_circle.radius run kill @s