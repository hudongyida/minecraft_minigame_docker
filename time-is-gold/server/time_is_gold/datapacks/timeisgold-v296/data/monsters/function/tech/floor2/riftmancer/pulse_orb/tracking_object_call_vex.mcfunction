data modify storage timeisgold:function_api stack append value {path:"monsters:tech/floor2/riftmancer/pulse_orb", initfunction:none, tickfunction:particle, endfunction:none, hitfunction:hit,\
                                                                    monsteruuid:0, targetuuid:0, target:0, speed:0.5, hitbox_1:0.15, hitbox_2:0.7, hitbox_3:0.85, wall:1, hitend:1, step:100, force_x:0, force_y:0, reflection:0}
execute as @s on origin run function system:utils/uuid_tokenizer/init
execute as @s run data modify storage timeisgold:function_api stack[-1].monsteruuid set from storage timeisgold:uuid_tokenizer output

execute as @s at @s run summon marker ~ ~ ~ {Tags:[riftmancer.pulse_orb.marker.direction]}
execute as @s at @s as @e[type=marker,tag=riftmancer.pulse_orb.marker.direction,distance=..0.5] anchored eyes rotated as @s run rotate @s facing entity @p[predicate=system:player,distance=..50] eyes
execute as @s at @s as @e[type=marker,tag=riftmancer.pulse_orb.marker.direction,distance=..0.5] anchored eyes rotated as @s run function monsters:tech/global/utils/tracking_object/init with storage timeisgold:function_api stack[-1]

data remove storage timeisgold:function_api stack[-1]
execute as @s at @s run kill @e[type=marker,tag=riftmancer.pulse_orb.marker.direction,distance=..0.5]