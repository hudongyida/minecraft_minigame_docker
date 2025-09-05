# Broken
execute as @s store result score @s monsters.specimen_zombie.health run data get entity @s Health
execute as @s if score @s monsters.specimen_zombie.health < @s monsters.specimen_zombie.health_previous run tag @s add monsters.specimen.broken
execute as @s store result score @s monsters.specimen_zombie.health_previous run data get entity @s Health

execute as @s[tag=monsters.specimen.broken] if function monsters:tech/floor2/specimen_zombie/random run tag @s remove monsters.specimen.broken