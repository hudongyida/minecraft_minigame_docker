advancement revoke @s only it:ranged/explosive_bow_hit
$data modify storage timeisgold:function_api stack append value {power:2, playerid:$(playerid)}

$execute as @n[tag=monster,scores={entityid=$(entityid)}] at @s positioned ~ ~1 ~ run function it:tech/utils/explode/init with storage timeisgold:function_api stack[-1]

data remove storage timeisgold:function_api stack[-1]