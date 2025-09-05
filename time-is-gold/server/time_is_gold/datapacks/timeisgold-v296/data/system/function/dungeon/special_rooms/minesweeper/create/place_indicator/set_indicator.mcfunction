execute positioned ~ ~ ~ run function system:dungeon/special_rooms/minesweeper/create/place_indicator/count_mine

execute if score @s dungeon.special_rooms.minesweeper.nearby_mine matches 0 run setblock ~ ~ ~ white_concrete
execute if score @s dungeon.special_rooms.minesweeper.nearby_mine matches 1 run setblock ~ ~ ~ green_concrete
execute if score @s dungeon.special_rooms.minesweeper.nearby_mine matches 2 run setblock ~ ~ ~ lime_concrete
execute if score @s dungeon.special_rooms.minesweeper.nearby_mine matches 3 run setblock ~ ~ ~ yellow_concrete
execute if score @s dungeon.special_rooms.minesweeper.nearby_mine matches 4 run setblock ~ ~ ~ orange_concrete
execute if score @s dungeon.special_rooms.minesweeper.nearby_mine matches 5 run setblock ~ ~ ~ red_concrete
execute if score @s dungeon.special_rooms.minesweeper.nearby_mine matches 6 run setblock ~ ~ ~ magenta_concrete
execute if score @s dungeon.special_rooms.minesweeper.nearby_mine matches 7 run setblock ~ ~ ~ purple_concrete
execute if score @s dungeon.special_rooms.minesweeper.nearby_mine matches 8 run setblock ~ ~ ~ blue_concrete