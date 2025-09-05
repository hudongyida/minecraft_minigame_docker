# 실행 인자: 게임이 실행 중이 아닐 때 로비에 들어온 플레이어

scoreboard players reset @s timeX10
gamemode adventure @s
function system:lobby/inventory/reset
function admin:attribute_reset

execute as @s[team=!spectators] run team join ready @s

xp set @s 0 levels
xp set @s 0 points

tp @s @n[type=marker,tag=system.lobby.spawn]