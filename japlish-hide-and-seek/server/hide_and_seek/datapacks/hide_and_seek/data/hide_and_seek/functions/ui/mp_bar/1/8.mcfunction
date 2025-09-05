#reserve_1 全体
#reserve_2 全体/80
#reserve_3 各段階の最低値


#1
scoreboard players operation @s reserve_3 += @s reserve_2
execute if score @s MP < @s reserve_3 run return run data modify storage macro: ui.mp_bar_1 set value "uE011"
#2
scoreboard players operation @s reserve_3 += @s reserve_2
execute if score @s MP < @s reserve_3 run return run data modify storage macro: ui.mp_bar_1 set value "uE012"
#3
scoreboard players operation @s reserve_3 += @s reserve_2
execute if score @s MP < @s reserve_3 run return run data modify storage macro: ui.mp_bar_1 set value "uE013"
#4
scoreboard players operation @s reserve_3 += @s reserve_2
execute if score @s MP < @s reserve_3 run return run data modify storage macro: ui.mp_bar_1 set value "uE014"
#5
scoreboard players operation @s reserve_3 += @s reserve_2
execute if score @s MP < @s reserve_3 run return run data modify storage macro: ui.mp_bar_1 set value "uE015"
#6
scoreboard players operation @s reserve_3 += @s reserve_2
execute if score @s MP < @s reserve_3 run return run data modify storage macro: ui.mp_bar_1 set value "uE016"
#7
scoreboard players operation @s reserve_3 += @s reserve_2
execute if score @s MP < @s reserve_3 run return run data modify storage macro: ui.mp_bar_1 set value "uE017"
#8
data modify storage macro: ui.mp_bar_1 set value "uE018"






