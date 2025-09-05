execute unless score @s combat.speed_deltaX10 = @s combat.speed_deltaX10.previous_stat run tag @s add combat.apply_attributes.temp
execute unless score @s combat.speed_multiplier = @s combat.speed_multiplier.previous_stat run tag @s add combat.apply_attributes.temp_

scoreboard players remove @s combat.speed_multiplier 100

execute if entity @s[tag=combat.apply_attributes.temp] store result storage timeisgold:function_api stack[-1].speed_delta double 0.1 run scoreboard players get @s combat.speed_deltaX10
execute if entity @s[tag=combat.apply_attributes.temp_] store result storage timeisgold:function_api stack[-1].speed_multiplier double 0.01 run scoreboard players get @s combat.speed_multiplier

scoreboard players add @s combat.speed_multiplier 100

attribute @s[tag=combat.apply_attributes.temp] minecraft:movement_speed modifier remove system.combat.speed_delta
attribute @s[tag=combat.apply_attributes.temp_] minecraft:movement_speed modifier remove system.combat.speed_multiplier

function system:combat/stat_manager/attributes/apply/speed with storage timeisgold:function_api stack[-1]

tag @s remove combat.apply_attributes.temp
tag @s remove combat.apply_attributes.temp_