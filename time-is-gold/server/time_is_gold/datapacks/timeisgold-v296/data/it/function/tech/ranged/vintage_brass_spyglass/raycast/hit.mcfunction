$execute at @a[scores={playerid=$(playerid)}] run playsound minecraft:entity.arrow.hit_player hostile @s ~ ~ ~ 1 1.5 0.1

$execute as @a[scores={playerid=$(playerid)}] run function system:utils/uuid_tokenizer/init
$data modify storage timeisgold:function_api stack append value {targetuuid:0, output:item.vintage_brass_spyglass.distance,value:1d,playerid:$(playerid),knockback:1}
data modify storage timeisgold:function_api stack[-1].targetuuid set from storage timeisgold:uuid_tokenizer output
execute as @s at @s run function system:math/vectors/entity_distance/init with storage timeisgold:function_api stack[-1]
$execute as @p[scores={playerid=$(playerid)}] if score @s item.vintage_brass_spyglass.time matches 70.. run scoreboard players set @s item.vintage_brass_spyglass.time 70
$scoreboard players operation @p[scores={playerid=$(playerid)}] item.vintage_brass_spyglass.time *= #3 scoreboardConstant
$scoreboard players operation @s item.vintage_brass_spyglass.distance *= @p[scores={playerid=$(playerid)}] item.vintage_brass_spyglass.time
scoreboard players operation @s item.vintage_brass_spyglass.distance /= #8 scoreboardConstant
tellraw @s {"score": {"name": "@s","objective": "item.vintage_brass_spyglass.distance"}}
execute store result storage timeisgold:function_api stack[-1].value double 0.002 run scoreboard players get @s item.vintage_brass_spyglass.distance
execute as @s at @s run function system:combat/modified_damage/laser/init with storage timeisgold:function_api stack[-1]
data remove storage timeisgold:function_api stack[-1]
scoreboard players reset @s item.vintage_brass_spyglass.distance