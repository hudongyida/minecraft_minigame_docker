scoreboard players set @s dungeon.special_rooms.minesweeper.nearby_mine 0

execute at @s positioned ~-1 ~ ~-1 if entity @e[type=marker,tag=dungeon.special_rooms.minesweeper.mine,distance=..0.1] run scoreboard players add @s dungeon.special_rooms.minesweeper.nearby_mine 1
execute at @s positioned ~-1 ~ ~0 if entity @e[type=marker,tag=dungeon.special_rooms.minesweeper.mine,distance=..0.1] run scoreboard players add @s dungeon.special_rooms.minesweeper.nearby_mine 1
execute at @s positioned ~-1 ~ ~1 if entity @e[type=marker,tag=dungeon.special_rooms.minesweeper.mine,distance=..0.1] run scoreboard players add @s dungeon.special_rooms.minesweeper.nearby_mine 1
execute at @s positioned ~0 ~ ~-1 if entity @e[type=marker,tag=dungeon.special_rooms.minesweeper.mine,distance=..0.1] run scoreboard players add @s dungeon.special_rooms.minesweeper.nearby_mine 1
execute at @s positioned ~0 ~ ~1 if entity @e[type=marker,tag=dungeon.special_rooms.minesweeper.mine,distance=..0.1] run scoreboard players add @s dungeon.special_rooms.minesweeper.nearby_mine 1
execute at @s positioned ~1 ~ ~-1 if entity @e[type=marker,tag=dungeon.special_rooms.minesweeper.mine,distance=..0.1] run scoreboard players add @s dungeon.special_rooms.minesweeper.nearby_mine 1
execute at @s positioned ~1 ~ ~0 if entity @e[type=marker,tag=dungeon.special_rooms.minesweeper.mine,distance=..0.1] run scoreboard players add @s dungeon.special_rooms.minesweeper.nearby_mine 1
execute at @s positioned ~1 ~ ~1 if entity @e[type=marker,tag=dungeon.special_rooms.minesweeper.mine,distance=..0.1] run scoreboard players add @s dungeon.special_rooms.minesweeper.nearby_mine 1