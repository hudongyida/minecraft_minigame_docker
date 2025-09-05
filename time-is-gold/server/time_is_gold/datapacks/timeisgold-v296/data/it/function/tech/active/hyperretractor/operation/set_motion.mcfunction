$execute as @s at @s run function system:math/vectors/entity_direction/init {storage_x:item.hyperretractor.vector.x, storage_y:item.hyperretractor.vector.y, storage_z:item.hyperretractor.vector.z, targetuuid:"$(targetuuid)"}
#$execute as @s at @s run function system:math/vectors/entity_distance/init {targetuuid:"$(targetuuid)", output:item.hyperretractor.distance}

execute as @s store result entity @s Motion[0] double 0.03 run scoreboard players get @s item.hyperretractor.vector.x
execute as @s store result entity @s Motion[1] double 0.01 run scoreboard players get @s item.hyperretractor.vector.y
execute as @s store result entity @s Motion[2] double 0.03 run scoreboard players get @s item.hyperretractor.vector.z