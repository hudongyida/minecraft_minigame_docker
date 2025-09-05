# Broken
execute as @s store result score @s monsters.specimen_skeleton.health run data get entity @s Health
execute as @s if score @s monsters.specimen_skeleton.health < @s monsters.specimen_skeleton.health_previous run tag @s add monsters.specimen.broken
execute as @s store result score @s monsters.specimen_skeleton.health_previous run data get entity @s Health

execute as @s[tag=monsters.specimen.broken] if function monsters:tech/floor2/specimen_skeleton/random run tag @s remove monsters.specimen.broken