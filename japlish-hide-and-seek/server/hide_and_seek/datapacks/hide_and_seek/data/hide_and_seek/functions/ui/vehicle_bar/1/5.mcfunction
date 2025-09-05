#reserve_1 全体
#reserve_2 全体/80
#reserve_3 各段階の最低値


#1
scoreboard players operation @s reserve_3 += @s reserve_2
execute if score @s reserve_5 < @s reserve_3 run return run data modify storage macro: ui.vehicle_bar_1 set value "uE169"
#2
scoreboard players operation @s reserve_3 += @s reserve_2
execute if score @s reserve_5 < @s reserve_3 run return run data modify storage macro: ui.vehicle_bar_1 set value "uE16A"
#3
scoreboard players operation @s reserve_3 += @s reserve_2
execute if score @s reserve_5 < @s reserve_3 run return run data modify storage macro: ui.vehicle_bar_1 set value "uE16B"
#4
scoreboard players operation @s reserve_3 += @s reserve_2
execute if score @s reserve_5 < @s reserve_3 run return run data modify storage macro: ui.vehicle_bar_1 set value "uE16C"
#5
scoreboard players operation @s reserve_3 += @s reserve_2
execute if score @s reserve_5 < @s reserve_3 run return run data modify storage macro: ui.vehicle_bar_1 set value "uE16D"
#6
scoreboard players operation @s reserve_3 += @s reserve_2
execute if score @s reserve_5 < @s reserve_3 run return run data modify storage macro: ui.vehicle_bar_1 set value "uE16E"
#7
scoreboard players operation @s reserve_3 += @s reserve_2
execute if score @s reserve_5 < @s reserve_3 run return run data modify storage macro: ui.vehicle_bar_1 set value "uE16F"
#8
data modify storage macro: ui.vehicle_bar_1 set value "uE170"






