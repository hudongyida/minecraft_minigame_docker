function system:math/vectors/looking_direction/init {storage_x:item.chicken_shooter.x,storage_y:item.chicken_shooter.y,storage_z:item.chicken_shooter.z}
data modify storage timeisgold:function_api stack append value {x:0,y:0,z:0,playerid:0}
execute store result storage timeisgold:function_api stack[-1].x double 0.01 run scoreboard players get @s item.chicken_shooter.x
execute store result storage timeisgold:function_api stack[-1].y double 0.01 run scoreboard players get @s item.chicken_shooter.y
execute store result storage timeisgold:function_api stack[-1].z double 0.01 run scoreboard players get @s item.chicken_shooter.z
execute store result storage timeisgold:function_api stack[-1].playerid int 1 run scoreboard players get @s playerid
execute at @s anchored eyes positioned ^ ^ ^.1 run function it:tech/ranged/chicken_shooter/functions/launch with storage timeisgold:function_api stack[-1]
data remove storage timeisgold:function_api stack[-1]