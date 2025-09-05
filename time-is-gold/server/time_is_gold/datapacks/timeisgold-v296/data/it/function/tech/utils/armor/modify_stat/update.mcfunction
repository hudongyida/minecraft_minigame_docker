data modify storage timeisgold:function_api stack append value {armor:{additive:0, multiplicative:0}}

$execute store result score @s item.utils.armor.time_defense_additive run data get entity @s equipment.$(slot).components."minecraft:custom_data".armor.additive
scoreboard players operation @s item.utils.armor.time_defense_additive += @s item.utils.armor.time_defense_additive.delta
execute store result storage timeisgold:function_api stack[-1].armor.additive int 1 run scoreboard players get @s item.utils.armor.time_defense_additive

$execute store result score @s item.utils.armor.time_defense_multiplicative run data get entity @s equipment.$(slot).components."minecraft:custom_data".armor.multiplicative
scoreboard players operation @s item.utils.armor.time_defense_multiplicative += @s item.utils.armor.time_defense_multiplicative.delta
execute store result storage timeisgold:function_api stack[-1].armor.multiplicative int 1 run scoreboard players get @s item.utils.armor.time_defense_multiplicative

$item modify entity @s armor.$(slot) it:armor/modify_time_defense_stat

data remove storage timeisgold:function_api stack[-1]