data modify storage timeisgold:function_api stack append value {index:0}
execute store result storage timeisgold:function_api stack[-1].index int 1 run scoreboard players get #SYSTEM system.gamemanager.connection.index

function system:gamemanager/connection/register_players/step with storage timeisgold:function_api stack[-1]

data remove storage timeisgold:function_api stack[-1]

scoreboard players add #SYSTEM system.gamemanager.connection.index 1
execute if score #SYSTEM system.gamemanager.connection.index <= #SYSTEM playerid run function system:gamemanager/connection/register_players/loop