$data modify storage timeisgold:function_api stack append value {targetuuid:"$(selfuuid)", output:item.utils.explode.entity_distance, damage:0.0d, playerid:$(playerid)}
function system:math/vectors/entity_distance/init with storage timeisgold:function_api stack[-1]
$scoreboard players set @s item.utils.explode.constant $(constantpower)
$scoreboard players set @s item.utils.explode.power $(power)
scoreboard players operation @s item.utils.explode.entity_distance *= @s item.utils.explode.constant
scoreboard players operation @s item.utils.explode.entity_distance /= #10 scoreboardConstant
scoreboard players set @s item.utils.explode.impact 1000
scoreboard players operation @s item.utils.explode.impact -= @s item.utils.explode.entity_distance
#tellraw @a {"score": {"name": "@s", "objective": "item.utils.explode.impact"}}
#tellraw @a {"score": {"name": "@s", "objective": "item.utils.explode.power"}}

execute as @s if score @s item.utils.explode.impact matches ..0 run return run function it:tech/utils/explode/functions/reset

scoreboard players operation @s item.utils.explode.damage = @s item.utils.explode.impact
scoreboard players operation @s item.utils.explode.damage *= @s item.utils.explode.impact
scoreboard players operation @s item.utils.explode.damage /= #1000 scoreboardConstant
scoreboard players operation @s item.utils.explode.damage += @s item.utils.explode.impact
scoreboard players operation @s item.utils.explode.damage *= #7 scoreboardConstant
scoreboard players operation @s item.utils.explode.damage *= @s item.utils.explode.power
scoreboard players operation @s item.utils.explode.damage += #1000 scoreboardConstant
#tellraw @a {"score": {"name": "@s", "objective": "item.utils.explode.damage"}}

execute as @s store result storage timeisgold:function_api stack[-1].damage double 0.001 run scoreboard players get @s item.utils.explode.damage
execute as @s run function it:tech/utils/explode/functions/apply_damage with storage timeisgold:function_api stack[-1]

function it:tech/utils/explode/functions/reset