# 실행 인자: @e[type=marker,tag=turret.death_checker]

execute at @s run playsound minecraft:entity.zombie.attack_iron_door hostile @a ~ ~ ~ 0.7 0 0
execute at @s run particle cloud ~ ~ ~ .5 .5 .5 0 10 force
function monsters:tech/floor1/turret/kill with entity @s data
kill @s