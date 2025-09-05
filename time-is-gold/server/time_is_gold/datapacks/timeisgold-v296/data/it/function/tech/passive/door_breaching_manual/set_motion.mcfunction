$execute as @s run function system:math/vectors/entity_direction/init {storage_x:item.door_breaching_manual.motion.x, storage_y:item.door_breaching_manual.motion.y, storage_z:item.door_breaching_manual.motion.z, targetuuid:"$(dooruuid)"}
execute store result entity @s Motion[0] double -0.025 run scoreboard players get @s item.door_breaching_manual.motion.x
execute store result entity @s Motion[1] double -0.025 run scoreboard players get @s item.door_breaching_manual.motion.y
execute store result entity @s Motion[2] double -0.025 run scoreboard players get @s item.door_breaching_manual.motion.z