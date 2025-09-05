#worldborderの中心位置を変更
$execute as @e[type=marker,tag=worldborder_move,limit=1] at @s run tp @s ~$(move_X) ~ ~$(move_Y)
execute as @e[type=marker,tag=worldborder_move,limit=1] at @s run worldborder center ~ ~