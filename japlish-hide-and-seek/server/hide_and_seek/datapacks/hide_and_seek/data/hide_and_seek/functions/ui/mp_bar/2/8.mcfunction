#reserve_1 全体
#reserve_2 全体/80
#reserve_3 各段階の最低値


#1
scoreboard players operation @s reserve_3 += @s reserve_2
execute if score @s MP_old < @s reserve_3 run return run data modify storage macro: ui.mp_bar_2 set value "uE061"
#2
scoreboard players operation @s reserve_3 += @s reserve_2
execute if score @s MP_old < @s reserve_3 run return run data modify storage macro: ui.mp_bar_2 set value "uE062"
#3
scoreboard players operation @s reserve_3 += @s reserve_2
execute if score @s MP_old < @s reserve_3 run return run data modify storage macro: ui.mp_bar_2 set value "uE063"
#4
scoreboard players operation @s reserve_3 += @s reserve_2
execute if score @s MP_old < @s reserve_3 run return run data modify storage macro: ui.mp_bar_2 set value "uE064"
#5
scoreboard players operation @s reserve_3 += @s reserve_2
execute if score @s MP_old < @s reserve_3 run return run data modify storage macro: ui.mp_bar_2 set value "uE065"
#6
scoreboard players operation @s reserve_3 += @s reserve_2
execute if score @s MP_old < @s reserve_3 run return run data modify storage macro: ui.mp_bar_2 set value "uE066"
#7
scoreboard players operation @s reserve_3 += @s reserve_2
execute if score @s MP_old < @s reserve_3 run return run data modify storage macro: ui.mp_bar_2 set value "uE067"
#8
data modify storage macro: ui.mp_bar_2 set value "uE068"






