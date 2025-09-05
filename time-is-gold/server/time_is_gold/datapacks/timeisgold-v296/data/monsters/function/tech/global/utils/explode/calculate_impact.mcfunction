$data modify storage timeisgold:function_api stack append value {entityid:$(entityid),power:$(power),constantpower:0,selfuuid:0}

function system:utils/uuid_tokenizer/init
data modify storage timeisgold:function_api stack[-1].selfuuid set from storage timeisgold:uuid_tokenizer output

execute as @s run scoreboard players set @s monsters.global.utils.explode.constant 100
$execute as @s run scoreboard players set @s monsters.global.utils.explode.power $(power)
execute as @s run scoreboard players operation @s monsters.global.utils.explode.power *= #3 scoreboardConstant
execute as @s store result storage timeisgold:function_api stack[-1].constantpower double 1 run scoreboard players operation @s monsters.global.utils.explode.constant /= @s monsters.global.utils.explode.power

execute at @s as @a[distance=..13] run tag @s add monsters.global.utils.explode.entity
execute at @s as @a[tag=monsters.global.utils.explode.entity,distance=..15] run function monsters:tech/global/utils/explode/functions/calculate_damage with storage timeisgold:function_api stack[-1]

$function monsters:tech/global/utils/explode/functions/fx {power:$(power)}

data remove storage timeisgold:function_api stack[-1]