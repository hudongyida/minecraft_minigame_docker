execute as @s unless function monsters:tech/floor1/quality_manager/has_target run return fail
execute as @s unless entity @n[tag=monster, distance=0.001..10] run return fail

effect give @s slowness 1 100 true
execute if predicate system:periodic_tick_30 at @s run playsound minecraft:ui.cartography_table.take_result player @a ~ ~ ~ 1 1.5 0
execute at @s run particle minecraft:entity_effect{color:[0.478,0.447,0.769,1.00]} ~ ~1.5 ~ .3 .3 .3 0 1 force

data modify storage timeisgold:function_api stack append value {x:0,y:0,z:0}
data modify storage timeisgold:function_api stack[-1].x set from entity @s Pos[0]
execute store result score @s monsters.floor1.quality_manager.y run data get entity @s Pos[1] 100
execute store result storage timeisgold:function_api stack[-1].y float 0.01 run scoreboard players operation @s monsters.floor1.quality_manager.y += #100 scoreboardConstant
data modify storage timeisgold:function_api stack[-1].z set from entity @s Pos[2]
execute at @s as @e[tag=monster, distance=0.001..10] run function monsters:tech/floor1/quality_manager/enforcement with storage timeisgold:function_api stack[-1]
data remove storage timeisgold:function_api stack[-1]