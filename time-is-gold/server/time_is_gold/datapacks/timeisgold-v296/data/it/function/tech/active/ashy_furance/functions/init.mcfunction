execute unless score @s item.ashy_furance.charge matches 1.. run function it:tech/utils/notify/init {function:"it:tech/active/ashy_furance/notify/uncharged"}
execute unless score @s item.ashy_furance.charge matches 1.. run return run tag @s remove item.ashy_furance.use

#execute if score @s item.ashy_furance.cube_counter matches 10.. run function it:tech/utils/notify/init {function:"it:tech/active/ashy_furance/notify/cube_limit"}
#execute if score @s item.ashy_furance.cube_counter matches 10.. run return run tag @s remove item.ashy_furance.use

data modify storage timeisgold:function_api stack append value {type:active, path:ashy_furance, initfunction:none, tickfunction:none, hitfunction:none, endfunction:summonize,\
                                                                playerid:0, speed:0.5, hitbox_1:0.15, hitbox_2:0.7, hitbox_3:0.85, wall:1, hitend:1, step:6}
execute store result storage timeisgold:function_api stack[-1].playerid int 1 run scoreboard players get @s playerid
execute as @s anchored eyes positioned ^ ^ ^ run function it:tech/utils/raycast/player/init with storage timeisgold:function_api stack[-1]
data remove storage timeisgold:function_api stack[-1]