execute as @s if entity @s[type=vex,tag=item.spirit_retriever.spirit] run return fail
execute as @s if score @s item.spirit_retriever.active_tick matches 1.. run return fail
scoreboard players set @s item.spirit_retriever.active_tick 200

data modify storage timeisgold:function_api stack append value {playerid:0, targetuuid:""}
execute as @s on attacker store result storage timeisgold:function_api stack[-1].playerid int 1 run scoreboard players get @s playerid
execute as @s run function system:utils/uuid_tokenizer/init
data modify storage timeisgold:function_api stack[-1].targetuuid set from storage timeisgold:uuid_tokenizer output
execute as @s at @s run function it:tech/melee/spirit_retriever/monster_attack/summon_spirit with storage timeisgold:function_api stack[-1]
data remove storage timeisgold:function_api stack[-1]