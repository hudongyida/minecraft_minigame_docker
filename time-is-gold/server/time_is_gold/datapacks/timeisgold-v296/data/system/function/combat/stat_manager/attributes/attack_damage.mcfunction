execute unless score @s combat.melee.damage_deltaX10 = @s combat.melee.damage_deltaX10.previous_stat run tag @s add combat.apply_attributes.temp
execute unless score @s combat.melee.damage_multiplier = @s combat.melee.damage_multiplier.previous_stat run tag @s add combat.apply_attributes.temp_

scoreboard players remove @s combat.melee.damage_multiplier 100

execute if entity @s[tag=combat.apply_attributes.temp] store result storage timeisgold:function_api stack[-1].damage_delta double 0.1 run scoreboard players get @s combat.melee.damage_deltaX10
execute if entity @s[tag=combat.apply_attributes.temp_] store result storage timeisgold:function_api stack[-1].damage_multiplier double 0.01 run scoreboard players get @s combat.melee.damage_multiplier

scoreboard players add @s combat.melee.damage_multiplier 100

attribute @s[tag=combat.apply_attributes.temp] minecraft:attack_damage modifier remove system.combat.melee.damage_delta
attribute @s[tag=combat.apply_attributes.temp_] minecraft:attack_damage modifier remove system.combat.melee.damage_multiplier

function system:combat/stat_manager/attributes/apply/attack_damage with storage timeisgold:function_api stack[-1]

tag @s remove combat.apply_attributes.temp
tag @s remove combat.apply_attributes.temp_