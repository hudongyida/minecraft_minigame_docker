# $(size_x)     - X 길이
# $(size_z)     - Z 길이
# $(count)      - 배치할 지뢰 수

scoreboard players operation #SYSTEM dungeon.special_rooms.minesweeper.mine_count = @s dungeon.special_rooms.minesweeper.mine_count
execute align xyz positioned ~ ~ ~ as @n[type=marker,tag=dungeon.special_rooms.minesweeper.mine_target,distance=..0.5] run tag @s remove dungeon.special_rooms.minesweeper.mine_target
$execute if score #SYSTEM dungeon.special_rooms.minesweeper.mine_count matches 1.. positioned ~ ~ ~ run function system:dungeon/special_rooms/minesweeper/create/place_mine/loop {size_x:$(size_x), size_z:$(size_z)}
$execute align xyz positioned ~ ~ ~ as @e[tag=dungeon.special_rooms.minesweeper.mine_target,dx=$(size_x),dy=-1,dz=$(size_z)] run tag @s remove dungeon.special_rooms.minesweeper.mine_target