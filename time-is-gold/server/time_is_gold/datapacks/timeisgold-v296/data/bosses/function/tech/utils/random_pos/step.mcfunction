scoreboard players add #TEMP bosses.utils.random_pos.epoch 1

$data modify storage timeisgold:function_api stack append value {dx:$(dx), dz:$(dz), x:0, z:0, tag:"$(tag)"}
function bosses:tech/utils/random_pos/pick_pos with storage timeisgold:function_api stack[-1]
execute positioned ~ ~ ~ run function bosses:tech/utils/random_pos/place_marker with storage timeisgold:function_api stack[-1]
data remove storage timeisgold:function_api stack[-1]

$execute unless entity @n[type=marker,tag=$(tag)] unless score #TEMP bosses.utils.random_pos.epoch matches 5.. positioned ~ ~ ~ run function bosses:tech/utils/random_pos/step {dx:$(dx), dz:$(dz), tag:"$(tag)"}