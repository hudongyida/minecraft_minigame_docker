data modify storage timeisgold:function_api stack append value {type:active, path:nano_boost, initfunction:none, tickfunction:"nano_buff/tick", hitfunction:"nano_buff/administer", endfunction:none,\
                                                                playerid:0, speed:0.5, hitbox_1:0.15, hitbox_2:0.7, hitbox_3:0.85, wall:1, hitend:1, step:100}
execute store result storage timeisgold:function_api stack[-1].playerid int 1 run scoreboard players get @s playerid
execute as @s anchored eyes positioned ^ ^ ^ run function it:tech/utils/raycast/player/init with storage timeisgold:function_api stack[-1]
data remove storage timeisgold:function_api stack[-1]