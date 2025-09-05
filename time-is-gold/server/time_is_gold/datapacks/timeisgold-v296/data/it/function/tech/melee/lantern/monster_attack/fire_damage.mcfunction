data modify storage timeisgold:function_api stack append value {playerid:0, value:2}
execute as @s on attacker store result storage timeisgold:function_api stack[-1].playerid int 1 run scoreboard players get @s playerid
execute as @s run function it:tech/melee/lantern/monster_attack/apply_damage with storage timeisgold:function_api stack[-1]
data remove storage timeisgold:function_api stack[-1]