function it:tech/utils/cooldown/init {scoreboard:item.contrary_wind.cooldown, value:140}
data modify storage timeisgold:function_api stack append value {type:passive, path:contrary_wind, initfunction:none, tickfunction:wind, hitfunction:none, endfunction:teleport, playerid:0, speed:-0.5, hitbox_1:0.15, hitbox_2:0.7, hitbox_3:0.85, wall:1, hitend:1, step:8}
execute store result storage timeisgold:function_api stack[-1].playerid int 1 run scoreboard players get @s playerid
execute as @s at @s positioned ^ ^ ^ run function it:tech/utils/raycast/default/init with storage timeisgold:function_api stack[-1]
data remove storage timeisgold:function_api stack[-1]