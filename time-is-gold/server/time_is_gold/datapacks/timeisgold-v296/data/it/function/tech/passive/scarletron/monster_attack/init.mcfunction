execute at @s unless entity @n[tag=monster,distance=0.1..15] run return fail

data modify storage timeisgold:function_api stack append value {targetuuid:"", pos_x:0, pos_y:0, pos_z:0, motion_x:0, motion_y:0, motion_z:0, playeruuidlist:[]}
execute at @s as @n[tag=monster,distance=0.1..15] run function system:utils/uuid_tokenizer/init
data modify storage timeisgold:function_api stack[-1].targetuuid set from storage timeisgold:uuid_tokenizer output
execute as @s on attacker run data modify storage timeisgold:function_api stack[-1].playeruuidlist set from entity @s UUID

function it:tech/passive/scarletron/monster_attack/get_direction with storage timeisgold:function_api stack[-1]
execute store result storage timeisgold:function_api stack[-1].motion_x double 0.01 run scoreboard players get @s item.scarletron.vector.x
execute store result storage timeisgold:function_api stack[-1].motion_y double 0.01 run scoreboard players get @s item.scarletron.vector.y
execute store result storage timeisgold:function_api stack[-1].motion_z double 0.01 run scoreboard players get @s item.scarletron.vector.z
execute store result storage timeisgold:function_api stack[-1].pos_x double 0.01 run scoreboard players get @s item.scarletron.vector.x
execute store result storage timeisgold:function_api stack[-1].pos_y double 0.01 run scoreboard players get @s item.scarletron.vector.y
execute store result storage timeisgold:function_api stack[-1].pos_z double 0.01 run scoreboard players get @s item.scarletron.vector.z

function it:tech/passive/scarletron/monster_attack/summon with storage timeisgold:function_api stack[-1]

data remove storage timeisgold:function_api stack[-1]