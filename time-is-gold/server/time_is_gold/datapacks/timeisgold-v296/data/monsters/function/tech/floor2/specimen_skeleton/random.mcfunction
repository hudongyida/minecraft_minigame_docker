scoreboard objectives add monsters.floor2.specimen_skeleton.random dummy
execute as @s store result score @s monsters.floor2.specimen_skeleton.random run random value 1..20
execute as @s if score @s monsters.floor2.specimen_skeleton.random matches 1..19 run return 1
scoreboard objectives remove monsters.floor2.specimen_skeleton.random
return fail