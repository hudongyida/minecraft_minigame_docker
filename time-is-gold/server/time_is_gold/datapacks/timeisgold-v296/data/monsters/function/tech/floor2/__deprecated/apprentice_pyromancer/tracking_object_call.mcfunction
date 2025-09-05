data modify storage timeisgold:function_api stack append value {path:"monsters:tech/floor2/apprentice_pyromancer", initfunction:none, tickfunction:flame, hitfunction:hit, endfunction:none,\
                                                                monsteruuid:0, targetuuid:0, target:0, speed:0.5, hitbox_1:0.15, hitbox_2:0.7, hitbox_3:0.85, wall:1, hitend:0, step:200, force_x:0, force_y:0, reflection:2}
execute as @s run function system:utils/uuid_tokenizer/init
data modify storage timeisgold:function_api stack[-1].monsteruuid set from storage timeisgold:uuid_tokenizer output
execute as @s positioned ^ ^ ^ run function monsters:tech/global/utils/tracking_object/init with storage timeisgold:function_api stack[-1]
data remove storage timeisgold:function_api stack[-1]