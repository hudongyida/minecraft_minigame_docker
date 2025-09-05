scoreboard players set @s item.time_supply.tick 200
effect give @s absorption 10 4 false
scoreboard players reset @s item.time_supply.damage_stored
function it:tech/utils/use_cost/on_right_click {item_tag:time_supply}

# SFX
execute at @s run playsound entity.item.break player @s ~ ~ ~ 0.5 2
execute at @s run playsound block.anvil.use player @s ~ ~ ~ 0.5 2

# VFX
data modify storage timeisgold:function_api stack append value {type:active, path:time_supply, initfunction:none, tickfunction:particle, hitfunction:none, endfunction:none,\
                                                                playerid:0, speed:0.5, hitbox_1:0.3, hitbox_2:0.5, hitbox_3:0.8, wall:1, hitend:1, step:80}
execute store result storage timeisgold:function_api stack[-1].playerid int 1 run scoreboard players get @s playerid
execute as @s positioned ^ ^ ^ run function it:tech/utils/raycast/player/init with storage timeisgold:function_api stack[-1]
data remove storage timeisgold:function_api stack[-1]