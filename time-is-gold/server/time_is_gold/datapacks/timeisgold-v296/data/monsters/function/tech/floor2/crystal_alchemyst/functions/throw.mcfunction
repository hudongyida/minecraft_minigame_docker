data modify storage timeisgold:function_api stack append value {entityid:0, motion_x:0, motion_y:0, motion_z:0,targetuuid:0, storage_x:monsters.floor2.crystal_alchemyst.vector_x, storage_y:monsters.floor2.crystal_alchemyst.vector_y, storage_z:monsters.floor2.crystal_alchemyst.vector_z}
execute at @s as @n[predicate=system:player] run function system:utils/uuid_tokenizer/init
data modify storage timeisgold:function_api stack[-1].targetuuid set from storage timeisgold:uuid_tokenizer output
execute store result storage timeisgold:function_api stack[-1].entityid int 1 run scoreboard players get @s entityid

function system:math/vectors/entity_direction/init with storage timeisgold:function_api stack[-1]
execute store result storage timeisgold:function_api stack[-1].motion_x double 0.02 run scoreboard players get @s monsters.floor2.crystal_alchemyst.vector_x
execute store result storage timeisgold:function_api stack[-1].motion_y double 0.02 run scoreboard players get @s monsters.floor2.crystal_alchemyst.vector_y
execute store result storage timeisgold:function_api stack[-1].motion_z double 0.02 run scoreboard players get @s monsters.floor2.crystal_alchemyst.vector_z

#function monsters:tech/floor2/crystal_alchemyst/functions/summon with storage timeisgold:function_api stack[-1]
data remove storage timeisgold:function_api stack[-1]