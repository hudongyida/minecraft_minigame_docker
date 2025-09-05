data modify storage timeisgold:function_api stack append value {type:active, path:nano_boost, initfunction:none, tickfunction:none, hitfunction:"detect/player", endfunction:none,\
                                                                playerid:0, speed:0.5, hitbox_1:0.15, hitbox_2:0.7, hitbox_3:0.85, wall:1, hitend:1, step:100}
execute store result storage timeisgold:function_api stack[-1].playerid int 1 run scoreboard players get @s playerid
execute as @s anchored eyes positioned ^ ^ ^ run function it:tech/utils/raycast/player/init with storage timeisgold:function_api stack[-1]
data remove storage timeisgold:function_api stack[-1]

execute as @s unless score @s item.nano_boost.detect_player matches 1 run tag @s remove item.nano_boost.detect
execute as @s unless score @s item.nano_boost.detect_player matches 1 run function it:tech/utils/notify/init {function:"it:tech/active/nano_boost/notify/invaild_target"}
scoreboard players reset @s item.nano_boost.detect_player