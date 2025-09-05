function system:math/vectors/entity_distance/init with storage timeisgold:function_api stack[-1]
scoreboard players operation @s monsters.floor1.drone.distance /= #25 scoreboardConstant
execute store result storage timeisgold:function_api stack[-1].duration int 1 run scoreboard players get @s monsters.floor1.drone.distance

data modify entity @s Rotation set value [0.0f,90.0f]
$execute as @s at @s anchored eyes positioned ^ ^ ^ run function monsters:tech/global/utils/raycast/default/init {path:"monsters:tech/floor1/drone_carrier", initfunction:none, tickfunction:dust, hitfunction:none, endfunction:place, wall:1, hitend:0, speed:0.25, step:200, target:0, hitbox_1:0.15, hitbox_2:0.7, hitbox_3:0.85, monsteruuid:"$(targetuuid)", system:1}