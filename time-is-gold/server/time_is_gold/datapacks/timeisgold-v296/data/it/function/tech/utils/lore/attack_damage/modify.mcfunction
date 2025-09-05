$data modify storage timeisgold:function_api stack append value {damage_value:0.0d,offset:$(offset)}
data modify storage timeisgold:function_api stack[-1].damage_value set from entity @s equipment.mainhand.components."minecraft:attribute_modifiers"[{type:"minecraft:attack_damage"}].amount

execute store result score @s item.utils.lore.display_value run data get storage timeisgold:function_api stack[-1].damage_value 100
execute store result score @s item.utils.lore.display_value run scoreboard players operation @s item.utils.lore.display_value += #100 scoreboardConstant
execute store result storage timeisgold:function_api stack[-1].damage_value double 0.01 run scoreboard players get @s item.utils.lore.display_value

function it:tech/utils/lore/attack_damage/set with storage timeisgold:function_api stack[-1]
data remove storage timeisgold:function_api stack[-1]