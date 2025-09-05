# 실행 인자: @e[type=armor_stand,tag=dungeon.special_rooms.minesweeper.reward_display.armor_stand]

execute at @s run function system:dungeon/special_rooms/supply/init

# VFX
execute at @s run particle explosion_emitter ~ ~ ~ 1 1 1 0.1 30 force

kill @s