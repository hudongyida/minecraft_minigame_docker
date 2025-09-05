# $(manageruuid)    - 지뢰찾기 관리자 마커 UUID Token

$execute if score @s dungeon.special_rooms.minesweeper.block.state matches 1 run scoreboard players add $(manageruuid) dungeon.special_rooms.minesweeper.block_count 1