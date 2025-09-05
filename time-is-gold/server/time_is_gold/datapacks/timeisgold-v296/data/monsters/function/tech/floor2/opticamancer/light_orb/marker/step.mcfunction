# 실행 인자: @e[type=marker,tag=opticamancer.light_orb.marker.direction]

execute if score @s monsters.floor2.opticamancer.fang_orb.tick matches 1.. run scoreboard players remove @s monsters.floor2.opticamancer.fang_orb.tick 1

execute unless score @s monsters.floor2.opticamancer.fang_orb.tick matches 1.. at @s run function monsters:tech/global/utils/tracking_object/init with entity @s data
execute unless score @s monsters.floor2.opticamancer.fang_orb.tick matches 1.. run kill @s