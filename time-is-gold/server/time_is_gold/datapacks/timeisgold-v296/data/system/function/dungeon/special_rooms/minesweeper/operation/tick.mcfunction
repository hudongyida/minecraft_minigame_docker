execute as @e[type=marker,tag=dungeon.special_rooms.marker.minesweeper_manager] at @s run function system:dungeon/special_rooms/minesweeper/operation/step with entity @s data

# 초기 시작 위치 파티클 표시
execute as @e[type=marker,tag=dungeon.special_rooms.minesweeper.start_pos] at @s positioned ~ ~1.5 ~ run particle happy_villager ~ ~ ~ 0.15 0.5 0.15 1 1 force

# 텍스트 디스플레이 삭제
execute as @e[type=text_display,tag=dungeon.special_rooms.minesweeper.mine_count_display] if score @s dungeon.special_rooms.minesweeper.display_tick matches 1.. run scoreboard players remove @s dungeon.special_rooms.minesweeper.display_tick 1
execute as @e[type=text_display,tag=dungeon.special_rooms.minesweeper.mine_count_display] if score @s dungeon.special_rooms.minesweeper.display_tick matches ..0 run kill @s