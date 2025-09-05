execute as @s run scoreboard players operation @s item.cleaver.dealt_damage /= #3 scoreboardConstant
data modify storage timeisgold:function_api stack append value {damage:0,playerid:0,entityid:0}
execute store result storage timeisgold:function_api stack[-1].damage double 0.1 run scoreboard players get @s item.cleaver.dealt_damage
execute store result storage timeisgold:function_api stack[-1].playerid int 1 run scoreboard players get @s playerid
execute store result storage timeisgold:function_api stack[-1].entityid int 1 run scoreboard players get @s item.cleaver.entityid-store
function it:tech/melee/cleaver/functions/damage with storage timeisgold:function_api stack[-1]
data remove storage timeisgold:function_api stack[-1]
scoreboard players reset @s item.cleaver.dealt_damage
scoreboard players reset @s item.cleaver.damage_init
scoreboard players reset @s item.cleaver.entityid-store