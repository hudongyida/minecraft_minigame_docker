function it:tech/utils/use_cost/time {cost:40}
scoreboard players add @s item.necro_transformer.charge 8

playsound entity.zombie_villager.converted hostile @s ~ ~ ~ 1 2 0
playsound block.respawn_anchor.charge block @s ~ ~ ~ 0.6 2 0

execute at @s run tp @s ~ ~1 ~
data modify storage timeisgold:function_api stack append value {x:0, y:0, z:0}
data modify storage timeisgold:function_api stack[-1].x set from entity @s Pos[0]
data modify storage timeisgold:function_api stack[-1].y set from entity @s Pos[1]
data modify storage timeisgold:function_api stack[-1].z set from entity @s Pos[2]
execute at @s run function it:tech/ranged/necro_transformer/functions/trail with storage timeisgold:function_api stack[-1]
data remove storage timeisgold:function_api stack[-1]
tp @s ~ ~ ~