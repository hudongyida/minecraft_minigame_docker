# $(size_x) - Array X 크기
# $(size_z) - Array Z 크기

$execute positioned ~ ~ ~ run function system:dungeon/special_rooms/minesweeper/create/place_marker/place {manageruuid:"$(manageruuid)"}
scoreboard players add #SYSTEM dungeon.special_rooms.minesweeper.iter_x 1
$execute positioned ~1 ~ ~ unless score #SYSTEM dungeon.special_rooms.minesweeper.iter_x matches $(size_x) run function system:dungeon/special_rooms/minesweeper/create/place_marker/loop_x {size_x:$(size_x), size_z:$(size_z), manageruuid:"$(manageruuid)"}