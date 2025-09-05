# 실행 인자: @e[type=marker,tag=system.portal.marker.data_storage]

execute if score @s system.portal.cooldown matches 1.. run scoreboard players remove @s system.portal.cooldown 1
execute if score @s system.portal.cooldown matches 0 run scoreboard players reset @s system.portal.cooldown

execute unless score @s system.portal.cooldown matches 1.. at @s run function system:portal/operation with entity @s data