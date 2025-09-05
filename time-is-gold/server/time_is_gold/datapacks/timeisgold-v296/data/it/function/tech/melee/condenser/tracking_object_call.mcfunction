data modify storage timeisgold:function_api stack append value {type:melee, path:condenser, initfunction:none, tickfunction:particle, hitfunction:hit, endfunction:none,\
                                                                playerid:0, targetuuid:0, speed:0.7, hitbox_1:0.15, hitbox_2:0.7, hitbox_3:0.85, wall:1, hitend:1, step:200, force_x:0, force_y:0, reflection:0}
execute store result storage timeisgold:function_api stack[-1].playerid int 1 run scoreboard players get @s playerid
function it:tech/utils/tracking_object/init with storage timeisgold:function_api stack[-1]
data remove storage timeisgold:function_api stack[-1]