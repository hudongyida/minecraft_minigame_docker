execute as @s run effect give @s slowness 1 100 true
execute as @s at @s if predicate system:on_ground facing entity @n[tag=monster,distance=..13] eyes run tp @s ~ ~ ~ ~ ~
execute if predicate system:periodic_tick_20 run playsound entity.blaze.burn hostile @a ~ ~ ~ 1 1.5 0
execute if predicate system:periodic_tick_20 run particle large_smoke ~ ~.5 ~ 0 0 0 0 1 force

execute as @s run scoreboard players add @s item.ashy_furance.cube_tick 1
execute as @s unless score @s item.ashy_furance.cube_tick matches 40.. run return fail

scoreboard players reset @s item.ashy_furance.cube_tick
playsound entity.blaze.shoot hostile @a ~ ~ ~ 1 1.5 0
$data modify storage timeisgold:function_api stack append value {type:active, path:ashy_furance, initfunction:none, tickfunction:tick, hitfunction:hit, endfunction:none,\
                                                                playerid:$(playerid), targetuuid:0, speed:0.2, hitbox_1:0.15, hitbox_2:0.7, hitbox_3:0.85, wall:0, hitend:1, step:50, force_x:9, force_y:9, reflection:0}
execute as @s positioned ^ ^ ^ run function it:tech/utils/tracking_object/init with storage timeisgold:function_api stack[-1]
data remove storage timeisgold:function_api stack[-1]