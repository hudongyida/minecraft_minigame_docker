data modify storage timeisgold:function_api stack append value {type:ranged, path:flamethrower, initfunction:none, tickfunction:flame, hitfunction:none, endfunction:none,\
                                                                playerid:0, speed:0.5, hitbox_1:0.15, hitbox_2:0.7, hitbox_3:0.85, wall:1, hitend:0, step:10}
execute store result storage timeisgold:function_api stack[-1].playerid int 1 run scoreboard players get @s playerid
execute as @s positioned ^ ^ ^ run function it:tech/utils/raycast/default/init with storage timeisgold:function_api stack[-1]
data remove storage timeisgold:function_api stack[-1]