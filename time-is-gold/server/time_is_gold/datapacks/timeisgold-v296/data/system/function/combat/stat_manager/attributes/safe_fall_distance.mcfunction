execute unless score @s combat.safe_fall_distance_deltaX10 = @s combat.safe_fall_distance_deltaX10.previous_stat run tag @s add combat.apply_attributes.temp
execute unless score @s combat.safe_fall_distance_multiplier = @s combat.safe_fall_distance_multiplier.previous_stat run tag @s add combat.apply_attributes.temp_

scoreboard players remove @s combat.safe_fall_distance_multiplier 100

execute if entity @s[tag=combat.apply_attributes.temp] store result storage timeisgold:function_api stack[-1].safe_fall_distance_delta double 0.1 run scoreboard players get @s combat.safe_fall_distance_deltaX10
execute if entity @s[tag=combat.apply_attributes.temp_] store result storage timeisgold:function_api stack[-1].safe_fall_distance_multiplier double 0.01 run scoreboard players get @s combat.safe_fall_distance_multiplier

scoreboard players add @s combat.safe_fall_distance_multiplier 100

attribute @s[tag=combat.apply_attributes.temp] minecraft:safe_fall_distance modifier remove system.combat.safe_fall_distance_delta
attribute @s[tag=combat.apply_attributes.temp_] minecraft:safe_fall_distance modifier remove system.combat.safe_fall_distance_multiplier

function system:combat/stat_manager/attributes/apply/safe_fall_distance with storage timeisgold:function_api stack[-1]

tag @s remove combat.apply_attributes.temp
tag @s remove combat.apply_attributes.temp_