execute at @s run playsound minecraft:entity.firework_rocket.blast player @a ~ ~ ~ 1 1 0
execute at @s run playsound minecraft:entity.player.levelup player @s ~ ~ ~ 1 2 1
execute at @s run particle flash ~ ~1.5 ~ .1 .1 .1 0.05 2 force

function it:tech/ranged/bard_guitar/functions/reset

execute as @s at @s run data modify storage timeisgold:function_api stack append value {playerid:0}
execute as @s at @s store result storage timeisgold:function_api stack[-1].playerid int 1 run scoreboard players get @s playerid
tag @s add item.bard_guitar.playing_man
execute as @s at @s as @e[tag=monster, distance=..25] if function it:tech/ranged/bard_guitar/functions/targeting run function it:tech/ranged/bard_guitar/functions/damage with storage timeisgold:function_api stack[-1]
tag @s remove item.bard_guitar.playing_man
execute as @s at @s run data remove storage timeisgold:function_api stack[-1]