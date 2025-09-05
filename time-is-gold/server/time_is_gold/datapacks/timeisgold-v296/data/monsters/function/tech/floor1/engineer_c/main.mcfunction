execute as @s unless function monsters:tech/floor1/engineer_c/functions/target run return fail

scoreboard players remove @s monsters.floor1.engineer_c.craft 1
execute unless score @s monsters.floor1.engineer_c.craft matches 1.. at @s anchored eyes positioned ^ ^ ^.1 run function monsters:tech/floor1/engineer_c/functions/throw