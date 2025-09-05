$data modify storage timeisgold:function_api stack append value {playeruuid:"", playerid:$(playerid), entityid:$(entityid)}
function system:utils/uuid_tokenizer/init
data modify storage timeisgold:function_api stack[-1].playeruuid set from storage timeisgold:uuid_tokenizer output

$execute if score @s item.explosive_axe.charge matches 1.. at @s as @n[tag=monster,scores={entityid=$(entityid)},limit=1] at @s run function it:tech/melee/explosive_axe/monster_attack/charge_1/set_motion with storage timeisgold:function_api stack[-1]
$execute if score @s item.explosive_axe.charge matches 2.. at @s as @n[tag=monster,scores={entityid=$(entityid)},limit=1] at @s run function it:tech/melee/explosive_axe/monster_attack/charge_2/init with storage timeisgold:function_api stack[-1]
execute if score @s item.explosive_axe.charge matches 3.. at @s run function it:tech/melee/explosive_axe/monster_attack/charge_3/init with storage timeisgold:function_api stack[-1]

data remove storage timeisgold:function_api stack[-1]

scoreboard players reset @s item.explosive_axe.charge
function it:tech/melee/explosive_axe/operation/update_item