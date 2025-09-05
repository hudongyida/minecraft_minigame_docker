execute unless score @s combat.knockback_resistance = @s combat.knockback_resistance.previous_stat run tag @s add combat.apply_attributes.temp

execute if entity @s[tag=combat.apply_attributes.temp] store result storage timeisgold:function_api stack[-1].knockback_resistance double 0.1 run scoreboard players get @s combat.knockback_resistance

attribute @s[tag=combat.apply_attributes.temp] minecraft:knockback_resistance modifier remove system.combat.knockback_resistance

function system:combat/stat_manager/attributes/apply/knockback_resistance with storage timeisgold:function_api stack[-1]

tag @s remove combat.apply_attributes.temp