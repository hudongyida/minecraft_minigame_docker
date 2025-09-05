#reserve_1 全体
#reserve_2 全体/80
#reserve_3 各段階の最低値


#1
scoreboard players operation @s reserve_3 += @s reserve_2
execute if score @s MP_old < @s reserve_3 run return run data modify storage macro: ui.mp_bar_2 set value "uE079"
#2
scoreboard players operation @s reserve_3 += @s reserve_2
execute if score @s MP_old < @s reserve_3 run return run data modify storage macro: ui.mp_bar_2 set value "uE07A"
#3
scoreboard players operation @s reserve_3 += @s reserve_2
execute if score @s MP_old < @s reserve_3 run return run data modify storage macro: ui.mp_bar_2 set value "uE07B"
#4
scoreboard players operation @s reserve_3 += @s reserve_2
execute if score @s MP_old < @s reserve_3 run return run data modify storage macro: ui.mp_bar_2 set value "uE07C"
#5
scoreboard players operation @s reserve_3 += @s reserve_2
execute if score @s MP_old < @s reserve_3 run return run data modify storage macro: ui.mp_bar_2 set value "uE07D"
#6
scoreboard players operation @s reserve_3 += @s reserve_2
execute if score @s MP_old < @s reserve_3 run return run data modify storage macro: ui.mp_bar_2 set value "uE07E"
#7
scoreboard players operation @s reserve_3 += @s reserve_2
execute if score @s MP_old < @s reserve_3 run return run data modify storage macro: ui.mp_bar_2 set value "uE07F"
#8
data modify storage macro: ui.mp_bar_2 set value "uE080"






