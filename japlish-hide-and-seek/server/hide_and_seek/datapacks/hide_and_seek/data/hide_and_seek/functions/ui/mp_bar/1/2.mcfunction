#reserve_1 全体
#reserve_2 全体/80
#reserve_3 各段階の最低値


#1
scoreboard players operation @s reserve_3 += @s reserve_2
execute if score @s MP < @s reserve_3 run return run data modify storage macro: ui.mp_bar_1 set value "uE041"
#2
scoreboard players operation @s reserve_3 += @s reserve_2
execute if score @s MP < @s reserve_3 run return run data modify storage macro: ui.mp_bar_1 set value "uE042"
#3
scoreboard players operation @s reserve_3 += @s reserve_2
execute if score @s MP < @s reserve_3 run return run data modify storage macro: ui.mp_bar_1 set value "uE043"
#4
scoreboard players operation @s reserve_3 += @s reserve_2
execute if score @s MP < @s reserve_3 run return run data modify storage macro: ui.mp_bar_1 set value "uE044"
#5
scoreboard players operation @s reserve_3 += @s reserve_2
execute if score @s MP < @s reserve_3 run return run data modify storage macro: ui.mp_bar_1 set value "uE045"
#6
scoreboard players operation @s reserve_3 += @s reserve_2
execute if score @s MP < @s reserve_3 run return run data modify storage macro: ui.mp_bar_1 set value "uE046"
#7
scoreboard players operation @s reserve_3 += @s reserve_2
execute if score @s MP < @s reserve_3 run return run data modify storage macro: ui.mp_bar_1 set value "uE047"
#8
data modify storage macro: ui.mp_bar_1 set value "uE048"






