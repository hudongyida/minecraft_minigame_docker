#reserve_1 全体
#reserve_2 全体/80
#reserve_3 各段階の最低値


#1
scoreboard players operation @s reserve_3 += @s reserve_2
execute if score @s reserve_5 < @s reserve_3 run return run data modify storage macro: ui.vehicle_bar_1 set value "uE171"
#2
scoreboard players operation @s reserve_3 += @s reserve_2
execute if score @s reserve_5 < @s reserve_3 run return run data modify storage macro: ui.vehicle_bar_1 set value "uE172"
#3
scoreboard players operation @s reserve_3 += @s reserve_2
execute if score @s reserve_5 < @s reserve_3 run return run data modify storage macro: ui.vehicle_bar_1 set value "uE173"
#4
scoreboard players operation @s reserve_3 += @s reserve_2
execute if score @s reserve_5 < @s reserve_3 run return run data modify storage macro: ui.vehicle_bar_1 set value "uE174"
#5
scoreboard players operation @s reserve_3 += @s reserve_2
execute if score @s reserve_5 < @s reserve_3 run return run data modify storage macro: ui.vehicle_bar_1 set value "uE175"
#6
scoreboard players operation @s reserve_3 += @s reserve_2
execute if score @s reserve_5 < @s reserve_3 run return run data modify storage macro: ui.vehicle_bar_1 set value "uE176"
#7
scoreboard players operation @s reserve_3 += @s reserve_2
execute if score @s reserve_5 < @s reserve_3 run return run data modify storage macro: ui.vehicle_bar_1 set value "uE177"
#8
data modify storage macro: ui.vehicle_bar_1 set value "uE178"






