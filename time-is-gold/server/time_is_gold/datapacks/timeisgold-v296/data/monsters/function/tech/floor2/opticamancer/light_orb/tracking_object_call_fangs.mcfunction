data modify storage timeisgold:function_api stack append value {path:"monsters:tech/floor2/opticamancer/light_orb", initfunction:none, tickfunction:particle, endfunction:flash, hitfunction:hit,\
                                                                monsteruuid:0, targetuuid:0, target:0, speed:0.2, hitbox_1:0.15, hitbox_2:0.7, hitbox_3:0.85, wall:1, hitend:1, step:100, force_x:0, force_y:0, reflection:0}
execute as @s on origin run function system:utils/uuid_tokenizer/init
data modify storage timeisgold:function_api stack[-1].monsteruuid set from storage timeisgold:uuid_tokenizer output

execute positioned ~ ~ ~ run summon marker ~ ~ ~ {Tags:["opticamancer.light_orb.marker.direction", "opticamancer.light_orb.marker.uninitialized"],Rotation:[0f,-90f]}
execute positioned ~-0.5 ~-0.5 ~-0.5 store result score @n[type=marker,tag=opticamancer.light_orb.marker.uninitialized,dx=1,dy=1,dz=1] monsters.floor2.opticamancer.fang_orb.tick run data get entity @s Warmup 3
execute positioned ~-0.5 ~-0.5 ~-0.5 as @n[type=marker,tag=opticamancer.light_orb.marker.uninitialized,dx=1,dy=1,dz=1] run function monsters:tech/floor2/opticamancer/light_orb/marker/set_data

data remove storage timeisgold:function_api stack[-1]