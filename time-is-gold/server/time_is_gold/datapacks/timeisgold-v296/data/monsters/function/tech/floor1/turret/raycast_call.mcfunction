data modify storage timeisgold:function_api stack append value {path:"monsters:tech/floor1/turret", initfunction:none, tickfunction:laser, hitfunction:hit, endfunction:none,\
                                                                wall:1, hitend:1, speed:0.5, step:200, target:0, hitbox_1:0.15, hitbox_2:0.7, hitbox_3:0.85, monsteruuid:0, system:0}
execute as @s at @s positioned ~ ~-1.5 ~ as @n[type=slime,tag=turret_hitbox,distance=..0.5] run function system:utils/uuid_tokenizer/init
data modify storage timeisgold:function_api stack[-1].monsteruuid set from storage timeisgold:uuid_tokenizer output
function monsters:tech/global/utils/raycast/default/init with storage timeisgold:function_api stack[-1]
data remove storage timeisgold:function_api stack[-1]