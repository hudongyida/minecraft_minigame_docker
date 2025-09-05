data modify storage timeisgold:function_api stack append value {min:2, max:2}

execute store result storage timeisgold:function_api stack[-1].min int 1 run scoreboard players get #3 scoreboardConstant
execute store result storage timeisgold:function_api stack[-1].max int 1 run scoreboard players get #5 scoreboardConstant

function system:math/random/shuffle_range/init with storage timeisgold:function_api stack[-1]

data remove storage timeisgold:function_api stack[-1]