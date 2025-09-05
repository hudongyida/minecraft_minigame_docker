data modify storage timeisgold:function_api stack append value {path:"monsters:tech/floor2/riftmancer/pulse_orb", initfunction:none, tickfunction:particle, endfunction:none, hitfunction:hit,\
                                                                monsteruuid:0, targetuuid:0, target:0, speed:0.2, hitbox_1:0.15, hitbox_2:0.7, hitbox_3:0.85, wall:1, hitend:1, step:100, force_x:0, force_y:0, reflection:0}
execute as @s on origin run function system:utils/uuid_tokenizer/init
data modify storage timeisgold:function_api stack[-1].monsteruuid set from storage timeisgold:uuid_tokenizer output

execute positioned ~ ~ ~ run summon marker ~ ~ ~ {Tags:["riftmancer.pulse_orb.marker.direction","riftmancer.pulse_orb.marker.direction.uninitialized","riftmancer.pulse_orb.marker.direction_1"],Rotation:[0f, 0f]}
execute positioned ~ ~ ~ run summon marker ~ ~ ~ {Tags:["riftmancer.pulse_orb.marker.direction","riftmancer.pulse_orb.marker.direction.uninitialized","riftmancer.pulse_orb.marker.direction_2"],Rotation:[0f, 0f]}
execute positioned ~-0.5 ~-0.5 ~-0.5 rotated as @s run rotate @n[type=marker,tag=riftmancer.pulse_orb.marker.direction_1,tag=riftmancer.pulse_orb.marker.direction.uninitialized,dx=0] ~ ~
execute positioned ~-0.5 ~-0.5 ~-0.5 rotated as @s run rotate @n[type=marker,tag=riftmancer.pulse_orb.marker.direction_2,tag=riftmancer.pulse_orb.marker.direction.uninitialized,dx=0] ~180 ~
execute positioned ~-0.5 ~-0.5 ~-0.5 store result score @e[type=marker,tag=riftmancer.pulse_orb.marker.direction.uninitialized,dx=0] monsters.floor2.riftmancer.fang_orb.tick run data get entity @s Warmup 3
execute positioned ~-0.5 ~-0.5 ~-0.5 as @e[type=marker,tag=riftmancer.pulse_orb.marker.direction.uninitialized,dx=0] run function monsters:tech/floor2/riftmancer/pulse_orb/marker/set_data

data remove storage timeisgold:function_api stack[-1]