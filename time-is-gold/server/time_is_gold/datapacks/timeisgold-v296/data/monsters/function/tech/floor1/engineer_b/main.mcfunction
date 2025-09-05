execute as @s unless function monsters:tech/floor1/engineer_b/functions/target run return fail
execute as @s unless score @s monsters.floor1.engineer_b.max_build matches 1.. run return fail

execute if score @s monsters.floor1.engineer_b.build matches 1.. run scoreboard players remove @s monsters.floor1.engineer_b.build 1
execute unless score @s monsters.floor1.engineer_b.build matches 1.. at @s run function monsters:tech/floor1/engineer_b/functions/build