execute as @a[gamemode=spectator,distance=..1] at @s run function game:unspectate_player
effect clear @s
gamemode spectator @s
clear @s
playsound minecraft:entity.bat.death master @s ~ ~ ~ 1 0
title @s actionbar {"text":" "}
tellraw @a[tag=playing] [{"selector":"@s"},{"text":" 在他们的场景里失败了.","color":"red"}]
tag @s add fail
tag @s remove success
scoreboard players add @s awd_fail 1