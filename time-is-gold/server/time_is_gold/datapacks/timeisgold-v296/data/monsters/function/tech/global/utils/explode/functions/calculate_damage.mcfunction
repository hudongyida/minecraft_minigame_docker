$data modify storage timeisgold:function_api stack append value {targetuuid:"$(selfuuid)", output:monsters.global.utils.explode.entity_distance, damage:0.0d, entityid:$(entityid)}
function system:math/vectors/entity_distance/init with storage timeisgold:function_api stack[-1]
$scoreboard players set @s monsters.global.utils.explode.constant $(constantpower)
$scoreboard players set @s monsters.global.utils.explode.power $(power)
scoreboard players operation @s monsters.global.utils.explode.entity_distance *= @s monsters.global.utils.explode.constant
scoreboard players operation @s monsters.global.utils.explode.entity_distance /= #5 scoreboardConstant
scoreboard players set @s monsters.global.utils.explode.impact 1000
scoreboard players operation @s monsters.global.utils.explode.impact -= @s monsters.global.utils.explode.entity_distance
#tellraw @a {"score": {"name": "@s", "objective": "monsters.global.utils.explode.impact"}}
#tellraw @a {"score": {"name": "@s", "objective": "monsters.global.utils.explode.power"}}

execute as @s if score @s monsters.global.utils.explode.impact matches ..0 run return run function monsters:tech/global/utils/explode/functions/reset

scoreboard players operation @s monsters.global.utils.explode.damage = @s monsters.global.utils.explode.impact
scoreboard players operation @s monsters.global.utils.explode.damage *= @s monsters.global.utils.explode.impact
scoreboard players operation @s monsters.global.utils.explode.damage /= #1000 scoreboardConstant
scoreboard players operation @s monsters.global.utils.explode.damage += @s monsters.global.utils.explode.impact
scoreboard players operation @s monsters.global.utils.explode.damage *= #7 scoreboardConstant
scoreboard players operation @s monsters.global.utils.explode.damage *= @s monsters.global.utils.explode.power
scoreboard players operation @s monsters.global.utils.explode.damage += #1000 scoreboardConstant
#tellraw @a {"score": {"name": "@s", "objective": "monsters.global.utils.explode.damage"}}

execute as @s store result storage timeisgold:function_api stack[-1].damage double 0.001 run scoreboard players get @s monsters.global.utils.explode.damage
execute as @s run function monsters:tech/global/utils/explode/functions/apply_damage with storage timeisgold:function_api stack[-1]

function it:tech/utils/explode/functions/reset