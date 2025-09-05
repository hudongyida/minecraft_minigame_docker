# expand_circle 마커 데이터 초기화 함수
# 실행 인자: @n[type=marker,tag=system.vfx.expand_circle.marker.uninitialized]

scoreboard players set @s system.vfx.expand_circle.repeat 36
$scoreboard players set @s system.vfx.expand_circle.radius $(step)
$scoreboard players set @s system.vfx.expand_circle.max_radius $(range)0
execute as @s store result entity @s data.step int 1 run scoreboard players get @s system.vfx.expand_circle.radius

tag @s remove system.vfx.expand_circle.marker.uninitialized

#scoreboard players add @s expand_circle_particle.repeat 36
#scoreboard players add @s expand_circle_particle.march 10
#$scoreboard players set @s expand_circle_particle.march $(step)
#scoreboard players add @s expand_circle_particle.wait 0
#$scoreboard players add @s expand_circle_particle.max_march $(range)0
##$scoreboard players add @e[tag=expand_circle_call_marker__init__] expand_circle_particle.range $(range)0
##execute as @e[tag=expand_circle_call_marker__init__] store result score @s expand_circle_particle.max_march run scoreboard players operation @s expand_circle_particle.range /= @s expand_circle_particle.march
#execute as @s store result entity @s data.step int 1 run scoreboard players get @s expand_circle_particle.march
#
##tellraw @a [{"score":{"objective": "expand_circle_particle.max_march","name": "@e[tag=expand_circle_call_marker__init__,limit=1]"},"color":"red"}]
##tellraw @a [{"nbt":"data.step","entity":"@e[tag=expand_circle_call_marker__init__]"}]
#
#tag @s remove expand_circle_call_marker__init__