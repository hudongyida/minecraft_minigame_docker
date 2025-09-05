#reserve_1 全体
#reserve_2 全体/80
execute if score @s reserve_5 matches 0 run return run data modify storage macro: ui.vehicle_bar_1 set value "uE141"

scoreboard players set @s reserve_3 0

#1
scoreboard players operation @s reserve_3 += @s reserve_2
execute if score @s reserve_5 < @s reserve_3 run return run data modify storage macro: ui.vehicle_bar_1 set value "uE141"
#2
scoreboard players operation @s reserve_3 += @s reserve_2
execute if score @s reserve_5 < @s reserve_3 run return run data modify storage macro: ui.vehicle_bar_1 set value "uE142"
#3
scoreboard players operation @s reserve_3 += @s reserve_2
execute if score @s reserve_5 < @s reserve_3 run return run data modify storage macro: ui.vehicle_bar_1 set value "uE143"
#4
scoreboard players operation @s reserve_3 += @s reserve_2
execute if score @s reserve_5 < @s reserve_3 run return run data modify storage macro: ui.vehicle_bar_1 set value "uE144"
#5
scoreboard players operation @s reserve_3 += @s reserve_2
execute if score @s reserve_5 < @s reserve_3 run return run data modify storage macro: ui.vehicle_bar_1 set value "uE145"
#6
scoreboard players operation @s reserve_3 += @s reserve_2
execute if score @s reserve_5 < @s reserve_3 run return run data modify storage macro: ui.vehicle_bar_1 set value "uE146"
#7
scoreboard players operation @s reserve_3 += @s reserve_2
execute if score @s reserve_5 < @s reserve_3 run return run data modify storage macro: ui.vehicle_bar_1 set value "uE147"
#8
data modify storage macro: ui.vehicle_bar_1 set value "uE148"






