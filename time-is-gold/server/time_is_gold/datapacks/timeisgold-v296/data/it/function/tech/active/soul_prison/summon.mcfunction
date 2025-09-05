data modify storage timeisgold:function_api stack append value {type:active, path:soul_prison, initfunction:none, tickfunction:tick, hitfunction:none, endfunction:explosion,\
                                                                playerid:0, targetuuid:0, speed:0.2, hitbox_1:0.15, hitbox_2:0.7, hitbox_3:0.85, wall:1, hitend:1, step:200, force_x:14, force_y:14, reflection:0}
execute as @s store result storage timeisgold:function_api stack[-1].playerid int 1 run scoreboard players get @s playerid

execute positioned ^ ^ ^ run function it:tech/utils/tracking_object/init with storage timeisgold:function_api stack[-1]
execute as @s rotated as @s run rotate @s ~120 0
execute positioned ^ ^ ^ run function it:tech/utils/tracking_object/init with storage timeisgold:function_api stack[-1]
execute as @s rotated as @s run rotate @s ~120 0
execute positioned ^ ^ ^ run function it:tech/utils/tracking_object/init with storage timeisgold:function_api stack[-1]

data remove storage timeisgold:function_api stack[-1]
kill @s