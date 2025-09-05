$function system:math/vectors/entity_direction/init {storage_x:item.explosive_axe.vector.x, storage_y:item.explosive_axe.vector.y, storage_z:item.explosive_axe.vector.z, targetuuid:"$(playeruuid)"}

execute store result entity @s Motion[0] double -0.04 run scoreboard players get @s item.explosive_axe.vector.x
data modify entity @s Motion[1] set value 0.1
execute store result entity @s Motion[2] double -0.04 run scoreboard players get @s item.explosive_axe.vector.z

# SFX
execute at @s run playsound minecraft:entity.generic.explode player @a ~ ~ ~ 0.2 1.5

# VFX
execute at @s run particle explosion ~ ~ ~ 0 0 0 0 1 force