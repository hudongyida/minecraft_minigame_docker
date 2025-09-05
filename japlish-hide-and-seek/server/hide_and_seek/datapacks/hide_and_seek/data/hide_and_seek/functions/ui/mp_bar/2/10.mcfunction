#reserve_1 全体
#reserve_2 全体/80

scoreboard players set @s reserve_3 0

#1
scoreboard players operation @s reserve_3 += @s reserve_2
execute if score @s MP_old < @s reserve_3 run return run data modify storage macro: ui.mp_bar_2 set value "uE051"
#2
scoreboard players operation @s reserve_3 += @s reserve_2
execute if score @s MP_old < @s reserve_3 run return run data modify storage macro: ui.mp_bar_2 set value "uE052"
#3
scoreboard players operation @s reserve_3 += @s reserve_2
execute if score @s MP_old < @s reserve_3 run return run data modify storage macro: ui.mp_bar_2 set value "uE053"
#4
scoreboard players operation @s reserve_3 += @s reserve_2
execute if score @s MP_old < @s reserve_3 run return run data modify storage macro: ui.mp_bar_2 set value "uE054"
#5
scoreboard players operation @s reserve_3 += @s reserve_2
execute if score @s MP_old < @s reserve_3 run return run data modify storage macro: ui.mp_bar_2 set value "uE055"
#6
scoreboard players operation @s reserve_3 += @s reserve_2
execute if score @s MP_old < @s reserve_3 run return run data modify storage macro: ui.mp_bar_2 set value "uE056"
#7
scoreboard players operation @s reserve_3 += @s reserve_2
execute if score @s MP_old < @s reserve_3 run return run data modify storage macro: ui.mp_bar_2 set value "uE057"
#8
data modify storage macro: ui.mp_bar_2 set value "uE058"






