#reserve_1 全体
#reserve_2 全体/80
#reserve_3 各段階の最低値


#1
scoreboard players operation @s reserve_3 += @s reserve_2
execute if score @s MP_old < @s reserve_3 run return run data modify storage macro: ui.mp_bar_2 set value "uE059"
#2
scoreboard players operation @s reserve_3 += @s reserve_2
execute if score @s MP_old < @s reserve_3 run return run data modify storage macro: ui.mp_bar_2 set value "uE05A"
#3
scoreboard players operation @s reserve_3 += @s reserve_2
execute if score @s MP_old < @s reserve_3 run return run data modify storage macro: ui.mp_bar_2 set value "uE05B"
#4
scoreboard players operation @s reserve_3 += @s reserve_2
execute if score @s MP_old < @s reserve_3 run return run data modify storage macro: ui.mp_bar_2 set value "uE05C"
#5
scoreboard players operation @s reserve_3 += @s reserve_2
execute if score @s MP_old < @s reserve_3 run return run data modify storage macro: ui.mp_bar_2 set value "uE05D"
#6
scoreboard players operation @s reserve_3 += @s reserve_2
execute if score @s MP_old < @s reserve_3 run return run data modify storage macro: ui.mp_bar_2 set value "uE05E"
#7
scoreboard players operation @s reserve_3 += @s reserve_2
execute if score @s MP_old < @s reserve_3 run return run data modify storage macro: ui.mp_bar_2 set value "uE05F"
#8
data modify storage macro: ui.mp_bar_2 set value "uE060"






