scoreboard objectives add monsters.floor2.specimen_zombie.random dummy
execute as @s store result score @s monsters.floor2.specimen_zombie.random run random value 1..20
execute as @s if score @s monsters.floor2.specimen_zombie.random matches 1..19 run return 1
scoreboard objectives remove monsters.floor2.specimen_zombie.random
return fail