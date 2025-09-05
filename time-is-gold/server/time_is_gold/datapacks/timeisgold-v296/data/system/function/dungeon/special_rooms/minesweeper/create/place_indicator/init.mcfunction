# $(size_x)         - Array X 크기
# $(size_z)         - Array Z 크기

$execute align xyz positioned ~ ~ ~ as @e[tag=dungeon.special_rooms.minesweeper.marker,dx=$(size_x),dy=-1,dz=$(size_z)] run scoreboard players set @s dungeon.special_rooms.minesweeper.block.state 1

# 지뢰 타일 -> 레드스톤 블록
$execute align xyz positioned ~ ~ ~ as @e[tag=dungeon.special_rooms.minesweeper.marker,tag=dungeon.special_rooms.minesweeper.mine,dx=$(size_x),dy=-1,dz=$(size_z)] at @s run fill ~ ~ ~ ~ ~ ~ redstone_block

# 빈 타일 -> 인디케이터 배치
$execute align xyz positioned ~ ~ ~ as @e[tag=dungeon.special_rooms.minesweeper.marker,tag=!dungeon.special_rooms.minesweeper.mine,dx=$(size_x),dy=-1,dz=$(size_z)] at @s run function system:dungeon/special_rooms/minesweeper/create/place_indicator/set_indicator