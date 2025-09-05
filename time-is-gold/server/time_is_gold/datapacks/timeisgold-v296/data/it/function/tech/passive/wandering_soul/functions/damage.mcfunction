function system:combat/modified_damage/magic/init with storage timeisgold:function_api stack[-1]
execute at @s run particle minecraft:soul ~ ~2.25 ~ 0 0 0 1 0 force
execute positioned ~ ~ ~ run playsound minecraft:block.soul_sand.place block @a ~ ~ ~ 0.5 0 0