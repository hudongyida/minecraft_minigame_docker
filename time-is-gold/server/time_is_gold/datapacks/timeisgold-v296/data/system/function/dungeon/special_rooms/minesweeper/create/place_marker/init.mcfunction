# $(size_x)         - Array X 크기
# $(size_z)         - Array Z 크기
# $(manageruuid)    - 관리자 마커 UUID Token

scoreboard players set #SYSTEM dungeon.special_rooms.minesweeper.iter_x 0
scoreboard players set #SYSTEM dungeon.special_rooms.minesweeper.iter_z 0 

$execute positioned ~ ~ ~ run function system:dungeon/special_rooms/minesweeper/create/place_marker/loop_z {size_x:$(size_x), size_z:$(size_z), manageruuid:"$(manageruuid)"}