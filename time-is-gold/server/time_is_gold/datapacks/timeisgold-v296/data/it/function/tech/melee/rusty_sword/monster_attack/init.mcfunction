data modify storage timeisgold:function_api stack append value {value:20.0d, playerid:0, knockback:0}
execute as @s on attacker store result storage timeisgold:function_api stack[-1].playerid int 1 run scoreboard players get @s playerid
function system:combat/modified_damage/melee/init with storage timeisgold:function_api stack[-1]
data remove storage timeisgold:function_api stack[-1]