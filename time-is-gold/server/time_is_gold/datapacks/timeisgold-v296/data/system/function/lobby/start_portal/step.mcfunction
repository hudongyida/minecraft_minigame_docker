# 실행 인자: @e[type=marker,tag=system.lobby.portal.marker]

execute if score @s system.lobby.portal.cooldown matches 1.. run scoreboard players remove @s system.lobby.portal.cooldown 1
execute if score @s system.lobby.portal.cooldown matches 0 run scoreboard players reset @s system.lobby.portal.cooldown

execute unless score @s system.lobby.portal.cooldown matches 1.. at @s run function system:lobby/start_portal/operation with entity @s data