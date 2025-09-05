execute unless score @s combat.gravityX1000 = @s combat.gravityX1000.previous_stat run tag @s add combat.apply_attributes.temp

execute if entity @s[tag=combat.apply_attributes.temp] store result storage timeisgold:function_api stack[-1].gravity double 0.001 run scoreboard players get @s combat.gravityX1000

attribute @s[tag=combat.apply_attributes.temp] minecraft:gravity modifier remove system.combat.gravity

function system:combat/stat_manager/attributes/apply/gravity with storage timeisgold:function_api stack[-1]

tag @s remove combat.apply_attributes.temp