#reserve_1 全体
#reserve_2 全体/80
#reserve_3 各段階の最低値


#1
scoreboard players operation @s reserve_3 += @s reserve_2
execute if score @s MP_old < @s reserve_3 run return run data modify storage macro: ui.mp_bar_2 set value "uE081"
#2
scoreboard players operation @s reserve_3 += @s reserve_2
execute if score @s MP_old < @s reserve_3 run return run data modify storage macro: ui.mp_bar_2 set value "uE082"
#3
scoreboard players operation @s reserve_3 += @s reserve_2
execute if score @s MP_old < @s reserve_3 run return run data modify storage macro: ui.mp_bar_2 set value "uE083"
#4
scoreboard players operation @s reserve_3 += @s reserve_2
execute if score @s MP_old < @s reserve_3 run return run data modify storage macro: ui.mp_bar_2 set value "uE084"
#5
scoreboard players operation @s reserve_3 += @s reserve_2
execute if score @s MP_old < @s reserve_3 run return run data modify storage macro: ui.mp_bar_2 set value "uE085"
#6
scoreboard players operation @s reserve_3 += @s reserve_2
execute if score @s MP_old < @s reserve_3 run return run data modify storage macro: ui.mp_bar_2 set value "uE086"
#7
scoreboard players operation @s reserve_3 += @s reserve_2
execute if score @s MP_old < @s reserve_3 run return run data modify storage macro: ui.mp_bar_2 set value "uE087"
#8
data modify storage macro: ui.mp_bar_2 set value "uE088"






