data modify storage timeisgold:function_api stack append value {type:ranged, path:energy_blaster, initfunction:scoreboard_assign, tickfunction:tick, hitfunction:hit, endfunction:end, playerid:0, speed:0.5, hitbox_1:0.15, hitbox_2:0.7, hitbox_3:0.85, wall:1, hitend:0, step:100}
execute store result storage timeisgold:function_api stack[-1].playerid int 1 run scoreboard players get @s playerid
execute as @s anchored eyes positioned ^ ^ ^ run function it:tech/utils/raycast/default/init with storage timeisgold:function_api stack[-1]
data remove storage timeisgold:function_api stack[-1]

execute as @s at @s run playsound minecraft:entity.breeze.shoot master @a[distance=..10] ~ ~ ~ 0.4 .4 0