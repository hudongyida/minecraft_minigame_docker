$scoreboard players set #18000 $(scoreboard) 18000
$execute store result score $(player)_rot $(scoreboard) run data get entity @s Rotation[0] 100.0
$execute store result entity @s Rotation[0] float 0.01 run scoreboard players operation #18000 $(scoreboard) -= $(player)_rot $(scoreboard)