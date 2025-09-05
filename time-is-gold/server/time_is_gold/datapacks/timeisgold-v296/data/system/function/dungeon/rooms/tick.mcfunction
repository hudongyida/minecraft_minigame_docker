execute as @e[type=marker,tag=dungeon.marker.check] run function system:dungeon/rooms/clear_check/tick
execute as @e[type=marker,tag=dungeon.marker.check] run function system:dungeon/rooms/glow_mobs/tick
function system:dungeon/rooms/detect_players/tick