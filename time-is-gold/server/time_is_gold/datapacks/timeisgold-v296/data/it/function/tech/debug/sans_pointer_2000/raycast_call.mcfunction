data modify storage timeisgold:function_api stack append value {type:debug, path:sans_pointer_2000, initfunction:none, tickfunction:step, hitfunction:none, endfunction:terminate,\
                                                                playerid:0, speed:0.5, hitbox_1:0.3, hitbox_2:0.5, hitbox_3:0.8, wall:1, hitend:0, step:100}
execute as @s store result storage timeisgold:function_api stack[-1].playerid int 1 run scoreboard players get @s playerid
execute as @s at @s anchored eyes positioned ^ ^ ^ run function it:tech/utils/raycast/default/init with storage timeisgold:function_api stack[-1]
data remove storage timeisgold:function_api stack[-1]