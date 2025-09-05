execute as @e[type=marker,tag=dungeon.special_rooms.marker.minesweeper_manager] at @s positioned ~-13 50 ~-13 as @a[dx=27,dy=-1024,dz=27] run tag @s add dungeon.special_rooms.minesweeper.enter_room

execute as @a[tag=dungeon.special_rooms.minesweeper.enter_room] if items entity @s container.* *[custom_data~{item:spelunker}] run scoreboard players set @s dungeon.special_rooms.minesweeper.spelunker_check 1
execute as @a[tag=dungeon.special_rooms.minesweeper.enter_room] if items entity @s weapon.offhand *[custom_data~{item:spelunker}] run scoreboard players set @s dungeon.special_rooms.minesweeper.spelunker_check 1
execute as @a[tag=dungeon.special_rooms.minesweeper.enter_room] unless items entity @s container.* *[custom_data~{item:spelunker}] unless score @s dungeon.special_rooms.minesweeper.spelunker_check matches 1 run function system:dungeon/special_rooms/minesweeper/give_spelunker/give_item
execute as @a[tag=!dungeon.special_rooms.minesweeper.enter_room] run scoreboard players reset @s dungeon.special_rooms.minesweeper.spelunker_check

tag @a[tag=dungeon.special_rooms.minesweeper.enter_room] remove dungeon.special_rooms.minesweeper.enter_room