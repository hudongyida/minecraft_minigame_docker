execute as @s at @s run summon marker ~ ~ ~ {Tags:["item.plasma_sabre.marker.temp"],data:{motion_x:0, motion_y:0, motion_z:0}}
execute as @s at @s store result entity @e[type=marker,tag=item.plasma_sabre.marker.temp,sort=nearest,limit=1] data.motion_x double -1 run data get entity @s Motion[0]
execute as @s at @s store result entity @e[type=marker,tag=item.plasma_sabre.marker.temp,sort=nearest,limit=1] data.motion_y double -1 run data get entity @s Motion[1]
execute as @s at @s store result entity @e[type=marker,tag=item.plasma_sabre.marker.temp,sort=nearest,limit=1] data.motion_z double -1 run data get entity @s Motion[2]
execute as @s at @s store result entity @s Motion[0] double 0.1 run data get entity @e[type=marker,tag=item.plasma_sabre.marker.temp,sort=nearest,limit=1] data.motion_x
execute as @s at @s store result entity @s Motion[1] double 0.1 run data get entity @e[type=marker,tag=item.plasma_sabre.marker.temp,sort=nearest,limit=1] data.motion_y
execute as @s at @s store result entity @s Motion[2] double 0.1 run data get entity @e[type=marker,tag=item.plasma_sabre.marker.temp,sort=nearest,limit=1] data.motion_z

# SFX
execute as @s at @s run playsound minecraft:block.note_block.didgeridoo block @a ~ ~ ~ 1 0.7 0
# VFX
#execute as @s at @s run particle dust{color:[0.15, 0.55, 0.55], scale:1} ~ ~ ~ 0.05 0.05 0.05 1 4 force
execute as @s at @s run summon marker ~ ~ ~ {Tags:["item.plasma_sabre.intercept.particle","item.plasma_sabre.intercept.particle_init"]}
execute as @e[type=marker,tag=item.plasma_sabre.intercept.particle_init] at @s facing entity @p[scores={item.plasma_sabre.active_tick=1..},nbt={SelectedItem:{components:{"minecraft:custom_data":{item:plasma_sabre}}}}] feet run tp @s ~ ~ ~ ~-180 0
execute as @e[type=marker,tag=item.plasma_sabre.intercept.particle_init] at @s run tp @s ^1 ^0.5 ^-0.5 ~ ~
execute as @e[type=marker,tag=item.plasma_sabre.intercept.particle_init] at @s run tag @s remove item.plasma_sabre.intercept.particle_init

tag @s add monsters.arrow_reflected
kill @e[type=marker,tag=item.plasma_sabre.marker.temp]