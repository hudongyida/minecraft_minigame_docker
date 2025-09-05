# 실행 인자: @e[type=marker,tag=item.hyperretractor.marker.placed]

execute if score @s item.hyperretractor.tick matches 1.. run scoreboard players remove @s item.hyperretractor.tick 1
execute if score @s item.hyperretractor.tick matches 0 run function it:tech/active/hyperretractor/operation/terminate with entity @s data

scoreboard players operation @s item.hyperretractor.tick_period = @s item.hyperretractor.tick
scoreboard players operation @s item.hyperretractor.tick_period %= #60 scoreboardConstant
execute if score @s item.hyperretractor.tick_period matches 0 at @s run function it:tech/active/hyperretractor/operation/init

# VFX
execute at @s run function it:tech/active/hyperretractor/operation/vfx with entity @s data