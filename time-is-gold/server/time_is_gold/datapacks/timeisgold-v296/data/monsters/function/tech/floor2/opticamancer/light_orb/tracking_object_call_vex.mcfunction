data modify storage timeisgold:function_api stack append value {path:"monsters:tech/floor2/opticamancer/light_orb", initfunction:targeting, tickfunction:particle, endfunction:flash, hitfunction:hit,\
                                                                    monsteruuid:0, targetuuid:0, target:0, speed:0.29, hitbox_1:0.15, hitbox_2:0.7, hitbox_3:0.85, wall:1, hitend:1, step:100, force_x:2, force_y:2, reflection:0}
execute as @s on origin run function system:utils/uuid_tokenizer/init
execute as @s run data modify storage timeisgold:function_api stack[-1].monsteruuid set from storage timeisgold:uuid_tokenizer output

execute positioned ~ ~ ~ run summon marker ~ ~ ~ {Tags:["opticamancer.light_orb.marker.direction"],Rotation:[0f,-90f]}
execute positioned ~ ~ ~ as @n[type=marker,tag=opticamancer.light_orb.marker.direction,distance=..0.5] at @s facing entity @n[type=player,predicate=system:player] feet run tp @s ~ ~ ~ ~ ~
execute positioned ~ ~ ~ as @n[type=marker,tag=opticamancer.light_orb.marker.direction,distance=..0.5] run function monsters:tech/global/utils/tracking_object/init with storage timeisgold:function_api stack[-1]

data remove storage timeisgold:function_api stack[-1]
execute positioned ~ ~ ~ run kill @n[type=marker,tag=opticamancer.light_orb.marker.direction,distance=..0.5]