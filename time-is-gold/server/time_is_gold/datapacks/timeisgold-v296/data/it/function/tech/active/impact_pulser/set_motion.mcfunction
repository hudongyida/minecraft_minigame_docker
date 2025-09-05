$execute as @s at @s run function system:math/vectors/entity_direction/init {storage_x:item.impact_pulser.vector.x, storage_y:item.impact_pulser.vector.y, storage_z:item.impact_pulser.vector.z, targetuuid:"$(targetuuid)"}
$execute as @s at @s run function system:math/vectors/entity_distance/init {targetuuid:"$(targetuuid)", output:item.impact_pulser.distance}
scoreboard players operation @s item.impact_pulser.distance /= #100 scoreboardConstant

# Debug
#execute as @s run tellraw @a {"score":{"name": "@s","objective": "item.impact_pulser.distance"}}

execute as @s if score @s item.impact_pulser.distance matches 2..3 run scoreboard players operation @s item.impact_pulser.vector.x *= #2 scoreboardConstant
execute as @s if score @s item.impact_pulser.distance matches 2..3 run scoreboard players operation @s item.impact_pulser.vector.y *= #2 scoreboardConstant
execute as @s if score @s item.impact_pulser.distance matches 2..3 run scoreboard players operation @s item.impact_pulser.vector.z *= #2 scoreboardConstant

execute as @s if score @s item.impact_pulser.distance matches ..1 run scoreboard players operation @s item.impact_pulser.vector.x *= #3 scoreboardConstant
execute as @s if score @s item.impact_pulser.distance matches ..1 run scoreboard players operation @s item.impact_pulser.vector.y *= #3 scoreboardConstant
execute as @s if score @s item.impact_pulser.distance matches ..1 run scoreboard players operation @s item.impact_pulser.vector.z *= #3 scoreboardConstant

execute as @s store result entity @s Motion[0] double -0.01 run scoreboard players get @s item.impact_pulser.vector.x
execute as @s store result entity @s Motion[1] double -0.002 run scoreboard players get @s item.impact_pulser.vector.y
execute as @s store result entity @s Motion[2] double -0.01 run scoreboard players get @s item.impact_pulser.vector.z