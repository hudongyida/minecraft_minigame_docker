$data modify storage timeisgold:function_api stack append value {playerid:$(playerid),power:$(power),constantpower:0,selfuuid:0}

function system:utils/uuid_tokenizer/init
data modify storage timeisgold:function_api stack[-1].selfuuid set from storage timeisgold:uuid_tokenizer output

execute as @s run scoreboard players set @s item.utils.explode.constant 100
$execute as @s run scoreboard players set @s item.utils.explode.power $(power)
execute as @s run scoreboard players operation @s item.utils.explode.power *= #3 scoreboardConstant
execute as @s store result storage timeisgold:function_api stack[-1].constantpower double 1 run scoreboard players operation @s item.utils.explode.constant /= @s item.utils.explode.power

execute at @s as @e[type=!#system:invulnerable,distance=..25] run tag @s add item.utils.explode.entity
execute at @s as @e[tag=item.utils.explode.entity,distance=..25] run function it:tech/utils/explode/functions/calculate_damage with storage timeisgold:function_api stack[-1]

$function it:tech/utils/explode/functions/fx {power:$(power)}

data remove storage timeisgold:function_api stack[-1]