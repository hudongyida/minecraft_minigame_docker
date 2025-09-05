data modify storage timeisgold:function_api stack append value {type:melee, path:timebreaker, initfunction:none, tickfunction:tick, hitfunction:hit, endfunction:collision, operate_function:"it:tech/melee/timebreaker/throw_item/gravity",\
    playerid:0, wall:1, hitend:1, speed:0.8, step:50, hitbox_1:0.3, hitbox_2:0.5, hitbox_3:0.8,\
    item:golden_axe, transformation_scale:[1f,1f,1f], transformation_left_rotation:[0.393f,-0.588f,-0.393f,0.588f], transformation_right_rotation:[0f,0f,0f,1f], transformation_transition:[0f,0f,0f], duration:2}
execute store result storage timeisgold:function_api stack[-1].playerid int 1 run scoreboard players get @s playerid
execute as @s positioned ^ ^ ^-01 run function it:tech/utils/throw_item/init with storage timeisgold:function_api stack[-1]
data remove storage timeisgold:function_api stack[-1]