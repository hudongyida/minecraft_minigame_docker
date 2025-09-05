execute unless score @s combat.luck = @s combat.luck.previous_stat run tag @s add combat.apply_attributes.temp

execute if entity @s[tag=combat.apply_attributes.temp] store result storage timeisgold:function_api stack[-1].luck double -0.01 run scoreboard players get @s combat.luck

attribute @s[tag=combat.apply_attributes.temp] minecraft:luck modifier remove system.combat.luck

function system:combat/stat_manager/attributes/apply/luck with storage timeisgold:function_api stack[-1]

tag @s remove combat.apply_attributes.temp