data modify storage timeisgold:function_api stack append value {id:0}
execute store result storage timeisgold:function_api stack[-1].id int 1 run scoreboard players get @s entityid
function monsters:tech/global/entity_database/query/remove/operation with storage timeisgold:function_api stack[-1]
data remove storage timeisgold:function_api stack[-1]