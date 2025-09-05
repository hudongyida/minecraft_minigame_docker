#reserve_1 全体
#reserve_2 全体/80
#reserve_3 各段階の最低値


#1
scoreboard players operation @s reserve_3 += @s reserve_2
execute if score @s reserve_5 < @s reserve_3 run return run data modify storage macro: ui.vehicle_bar_1 set value "uE179"
#2
scoreboard players operation @s reserve_3 += @s reserve_2
execute if score @s reserve_5 < @s reserve_3 run return run data modify storage macro: ui.vehicle_bar_1 set value "uE17A"
#3
scoreboard players operation @s reserve_3 += @s reserve_2
execute if score @s reserve_5 < @s reserve_3 run return run data modify storage macro: ui.vehicle_bar_1 set value "uE17B"
#4
scoreboard players operation @s reserve_3 += @s reserve_2
execute if score @s reserve_5 < @s reserve_3 run return run data modify storage macro: ui.vehicle_bar_1 set value "uE17C"
#5
scoreboard players operation @s reserve_3 += @s reserve_2
execute if score @s reserve_5 < @s reserve_3 run return run data modify storage macro: ui.vehicle_bar_1 set value "uE17D"
#6
scoreboard players operation @s reserve_3 += @s reserve_2
execute if score @s reserve_5 < @s reserve_3 run return run data modify storage macro: ui.vehicle_bar_1 set value "uE17E"
#7
scoreboard players operation @s reserve_3 += @s reserve_2
execute if score @s reserve_5 < @s reserve_3 run return run data modify storage macro: ui.vehicle_bar_1 set value "uE17F"
#8
data modify storage macro: ui.vehicle_bar_1 set value "uE180"






