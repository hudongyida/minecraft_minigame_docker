data modify storage timeisgold:function_api stack append value {type:ranged, path:fourier_transformer, initfunction:none, tickfunction:laser, hitfunction:hit, endfunction:none,\
                                                                speed:0.25, step:200, reflection:2, wall:1, hitend:0, hitbox_1:0.15, hitbox_2:0.7, hitbox_3:0.85, playerid:0}
execute store result storage timeisgold:function_api stack[-1].playerid int 1 run scoreboard players get @s playerid
execute positioned ^ ^ ^ as @s run function it:tech/utils/raycast/reflection/init with storage timeisgold:function_api stack[-1]
data remove storage timeisgold:function_api stack[-1]