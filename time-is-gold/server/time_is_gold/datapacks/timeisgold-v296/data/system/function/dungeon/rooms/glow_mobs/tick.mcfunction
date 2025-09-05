# 실행 인자: @e[type=marker,tag=dungeon.marker.check]

execute if score @s dungeon.rooms.glow_mobs.tick matches 1.. run scoreboard players remove @s dungeon.rooms.glow_mobs.tick 1
execute unless score @s dungeon.rooms.glow_mobs.tick matches 1.. run function system:dungeon/rooms/glow_mobs/apply with entity @s data