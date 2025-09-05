data modify storage timeisgold:function_api stack append value {type:melee, path:rapier, initfunction:step, tickfunction:none, hitfunction:none, endfunction:teleport,\
                                                                playerid:0, speed:0.5, hitbox_1:0.15, hitbox_2:0.7, hitbox_3:0.85, wall:1, hitend:1, step:3}
execute store result storage timeisgold:function_api stack[-1].playerid int 1 run scoreboard players get @s playerid
execute as @s positioned ^ ^0.1 ^ rotated ~ 0 run function it:tech/utils/raycast/default/init with storage timeisgold:function_api stack[-1]
data remove storage timeisgold:function_api stack[-1]