scoreboard players reset @s item.tome_of_hyper_epsilon_delta.tick
data modify storage timeisgold:function_api stack append value {max_hp:1, prev_hp:1}
execute store result storage timeisgold:function_api stack[-1].max_hp double 1 run scoreboard players get @s item.tome_of_hyper_epsilon_delta.max_hp
execute store result storage timeisgold:function_api stack[-1].prev_hp double 1 run scoreboard players get @s item.tome_of_hyper_epsilon_delta.prev_hp
function it:tech/active/tome_of_hyper_epsilon_delta/macro/revert_hp with storage timeisgold:function_api stack[-1]