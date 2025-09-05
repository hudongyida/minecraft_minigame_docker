# 층 생성 함수를 실행하는 함수.

execute as @e[type=armor_stand,tag=bfs.vertex] at @s run function system:dungeon/reset/clear_plot
function system:dungeon/generator/place_marker/clear
kill @e[type=armor_stand,tag=dungeon.room.center]

execute positioned 0 50 0 run function system:dungeon/generator/init