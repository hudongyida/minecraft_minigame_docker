execute if score @s monsters.floor1.drone.tick matches 1.. run scoreboard players remove @s monsters.floor1.drone.tick 1
$execute unless score @s monsters.floor1.drone.tick matches 1.. run kill @n[type=marker,tag=drone_carrier.target,scores={monsters.floor1.drone_carrier.id=$(id)}]
execute unless score @s monsters.floor1.drone.tick matches 1.. run function monsters:tech/global/utils/misc/void_kill

$execute as @s[tag=drone.work] at @s facing entity @n[type=marker,tag=drone_carrier.target,scores={monsters.floor1.drone_carrier.id=$(id)}] feet run tp @s ^ ^ ^0.25 ~ ~
$execute as @s[tag=drone.work] at @s if entity @n[type=marker,tag=drone_carrier.target,distance=..0.25,scores={monsters.floor1.drone_carrier.id=$(id)}] run tag @s add drone.air_strike

execute as @s[tag=drone.air_strike] at @s run function monsters:tech/floor1/drone_carrier/functions/air_strike
$execute as @s[tag=drone.air_strike] at @s run kill @n[type=marker,tag=drone_carrier.target,distance=..0.25,scores={monsters.floor1.drone_carrier.id=$(id)}]
execute as @s[tag=drone.air_strike] at @s run tag @s remove drone.work
execute as @s[tag=drone.air_strike] at @s run tag @s remove drone.air_strike

execute as @s[tag=!drone.work] at @s run tp @s ^ ^ ^0.25 ~ ~
execute as @s[tag=!drone.work] at @s run scoreboard players add @s monsters.floor1.drone_carrier.droning 1
execute as @s[tag=!drone.work] if score @s monsters.floor1.drone_carrier.droning matches 60.. run function monsters:tech/global/utils/misc/void_kill