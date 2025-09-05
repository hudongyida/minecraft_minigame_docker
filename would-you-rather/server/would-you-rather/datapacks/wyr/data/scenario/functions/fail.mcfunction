scoreboard players set $time showstart 3995
function show:timer

execute as @a[team=select] at @s run tellraw @a [{"selector":"@s"},{"text":" +0 点数!","color":"light_purple"}]
scoreboard players set $scenario active 0
title @a[tag=playing] title {"text":"失败!","color":"red"}
function show:points_fail
scoreboard players set $scenario active 0
tag @a remove hungry


function scenario:reset_player
function gene:f_win