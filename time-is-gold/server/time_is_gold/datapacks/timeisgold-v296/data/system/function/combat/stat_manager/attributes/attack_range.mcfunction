execute unless score @s combat.melee.attack_range_deltaX100 = @s combat.melee.attack_range_deltaX100.previous_stat run tag @s add combat.apply_attributes.temp
execute unless score @s combat.melee.attack_range_multiplier = @s combat.melee.attack_range_multiplier.previous_stat run tag @s add combat.apply_attributes.temp_

scoreboard players remove @s combat.melee.attack_range_multiplier 100

execute if entity @s[tag=combat.apply_attributes.temp] store result storage timeisgold:function_api stack[-1].attack_range_delta double 0.01 run scoreboard players get @s combat.melee.attack_range_deltaX100
execute if entity @s[tag=combat.apply_attributes.temp_] store result storage timeisgold:function_api stack[-1].attack_range_multiplier double 0.01 run scoreboard players get @s combat.melee.attack_range_multiplier

scoreboard players add @s combat.melee.attack_range_multiplier 100

attribute @s[tag=combat.apply_attributes.temp] minecraft:entity_interaction_range modifier remove system.combat.melee.attack_range_delta
attribute @s[tag=combat.apply_attributes.temp_] minecraft:entity_interaction_range modifier remove system.combat.melee.attack_range_multiplier

function system:combat/stat_manager/attributes/apply/attack_range with storage timeisgold:function_api stack[-1]

tag @s remove combat.apply_attributes.temp
tag @s remove combat.apply_attributes.temp_