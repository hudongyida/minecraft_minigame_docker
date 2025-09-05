execute as @s unless score @s item.chronospark.harmony_charge matches 1.. run return fail

# SFX
execute as @s at @s run function it:tech/melee/chronospark/functions/resonate_sound

$data modify storage timeisgold:function_api stack append value {charge:0,entityid:$(entityid),playerid:$(playerid),targetuuid:""}
execute as @s store result storage timeisgold:function_api stack[-1].charge int 1 run scoreboard players get @s item.chronospark.harmony_charge
$execute as @e[tag=monster,scores={entityid=$(entityid)}] run function system:utils/uuid_tokenizer/init
data modify storage timeisgold:function_api stack[-1].targetuuid set from storage timeisgold:uuid_tokenizer output
$execute as @e[tag=monster,scores={entityid=$(entityid)}] at @s run function it:tech/melee/chronospark/functions/resonate with storage timeisgold:function_api stack[-1]
execute as @e[tag=monster,tag=item.chronospark.damage] at @s run function it:tech/melee/chronospark/functions/damage with storage timeisgold:function_api stack[-1]
execute as @e[tag=monster,tag=item.chronospark.center] at @s run function it:tech/melee/chronospark/functions/center_damage with storage timeisgold:function_api stack[-1]
data remove storage timeisgold:function_api stack[-1]

scoreboard players reset @s item.chronospark.sound-all_charge__init
scoreboard players reset @s item.chronospark.harmony_charge