execute unless score @s combat.sink.total_diff = @s combat.sink.total_diff.previous_stat run tag @s add combat.apply_attributes.temp

execute if entity @s[tag=combat.apply_attributes.temp] store result storage timeisgold:function_api stack[-1].sink_total_multiplier double -0.01 run scoreboard players get @s combat.sink.total_diff

attribute @s[tag=combat.apply_attributes.temp] minecraft:attack_damage modifier remove system.combat.melee.sink_total_multiplier

function system:combat/stat_manager/attributes/apply/sink with storage timeisgold:function_api stack[-1]

tag @s remove combat.apply_attributes.temp