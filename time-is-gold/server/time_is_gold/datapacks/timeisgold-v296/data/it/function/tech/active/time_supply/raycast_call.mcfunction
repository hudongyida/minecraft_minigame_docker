data modify storage timeisgold:function_api stack append value {type:active, path:time_supply, initfunction:none, tickfunction:none, hitfunction:"target", endfunction:notify,\
                                                                playerid:0, speed:0.5, hitbox_1:0.3, hitbox_2:0.5, hitbox_3:0.8, wall:1, hitend:1, step:80}
execute store result storage timeisgold:function_api stack[-1].playerid int 1 run scoreboard players get @s playerid
execute as @s positioned ^ ^ ^ run function it:tech/utils/raycast/player/init with storage timeisgold:function_api stack[-1]
data remove storage timeisgold:function_api stack[-1]