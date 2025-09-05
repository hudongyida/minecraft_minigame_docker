function it:tech/utils/use_cost/laser_cannon_charge {charge:1, catalyst:1}

playsound entity.creaking.attack hostile @a ~ ~ ~ 0.5 1.5 0
playsound minecraft:entity.breeze.death hostile @a ~ ~ ~ 0.5 1 0.25
playsound block.iron_door.open block @a ~ ~ ~ 0.5 1.5 0



data modify storage timeisgold:function_api stack append value {type:ranged, path:antique_transformer, initfunction:none, tickfunction:particle, hitfunction:hit, endfunction:none,\
                                                                playerid:0, speed:0.25, hitbox_1:0.15, hitbox_2:0.7, hitbox_3:0.85, wall:1, hitend:0, step:200}
execute as @s store result storage timeisgold:function_api stack[-1].playerid int 1 run scoreboard players get @s playerid
execute as @s at @s anchored eyes positioned ^ ^ ^ run function it:tech/utils/raycast/default/init with storage timeisgold:function_api stack[-1]
data remove storage timeisgold:function_api stack[-1]