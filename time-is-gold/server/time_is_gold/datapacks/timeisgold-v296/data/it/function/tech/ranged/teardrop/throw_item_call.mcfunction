data modify storage timeisgold:function_api stack append value {type:ranged, path:teardrop, initfunction:none, tickfunction:particle, hitfunction:damage, endfunction:collision_effect, operate_function:none,\
    playerid:0, wall:1, hitend:1, speed:0.9, step:50, hitbox_1:0.35, hitbox_2:0.65, hitbox_3:1.0,\
    item:ghast_tear, transformation_scale:[1f,1f,1f], transformation_left_rotation:[0f,0f,0f,1f], transformation_right_rotation:[0f,0f,0f,1f], transformation_transition:[0f,0f,0f], duration:1}
execute store result storage timeisgold:function_api stack[-1].playerid int 1 run scoreboard players get @s playerid
execute as @s positioned ~ ~ ~ run function it:tech/utils/throw_item/init with storage timeisgold:function_api stack[-1]
data remove storage timeisgold:function_api stack[-1]