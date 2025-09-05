# $(size_x) - Array X 크기
# $(size_z) - Array Z 크기

$execute positioned ~ ~ ~ run function system:dungeon/special_rooms/minesweeper/create/place_marker/loop_x {size_x:$(size_x), size_z:$(size_z), manageruuid:"$(manageruuid)"}
scoreboard players set #SYSTEM dungeon.special_rooms.minesweeper.iter_x 0
scoreboard players add #SYSTEM dungeon.special_rooms.minesweeper.iter_z 1
$execute positioned ~ ~ ~1 unless score #SYSTEM dungeon.special_rooms.minesweeper.iter_z matches $(size_z) run function system:dungeon/special_rooms/minesweeper/create/place_marker/loop_z {size_x:$(size_x), size_z:$(size_z), manageruuid:"$(manageruuid)"}