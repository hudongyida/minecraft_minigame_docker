execute as @s store result score @s item.roulettow.chance run random value 1..10000
execute as @s if score @s item.roulettow.chance matches 1..399 run return run tag @s add item.roulettow.loser

data modify storage timeisgold:function_api stack append value {type:ranged, path:roulettow, initfunction:none, tickfunction:particle, hitfunction:hit, endfunction:none, playerid:0, speed:0.5, hitbox_1:0.15, hitbox_2:0.7, hitbox_3:0.85, wall:1, hitend:1, step:100}
execute store result storage timeisgold:function_api stack[-1].playerid int 1 run scoreboard players get @s playerid
execute as @s anchored eyes positioned ^ ^ ^ run function it:tech/utils/raycast/default/init with storage timeisgold:function_api stack[-1]
data remove storage timeisgold:function_api stack[-1]

execute as @s at @s run playsound minecraft:entity.firework_rocket.launch player @a ~ ~ ~ 1 1 0
execute as @s at @s run playsound minecraft:entity.player.levelup player @s ~ ~ ~ 1 1.5 1