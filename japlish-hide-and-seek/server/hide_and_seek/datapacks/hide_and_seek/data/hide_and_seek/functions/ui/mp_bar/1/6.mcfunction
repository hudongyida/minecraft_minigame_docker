#reserve_1 全体
#reserve_2 全体/80
#reserve_3 各段階の最低値


#1
scoreboard players operation @s reserve_3 += @s reserve_2
execute if score @s MP < @s reserve_3 run return run data modify storage macro: ui.mp_bar_1 set value "uE021"
#2
scoreboard players operation @s reserve_3 += @s reserve_2
execute if score @s MP < @s reserve_3 run return run data modify storage macro: ui.mp_bar_1 set value "uE022"
#3
scoreboard players operation @s reserve_3 += @s reserve_2
execute if score @s MP < @s reserve_3 run return run data modify storage macro: ui.mp_bar_1 set value "uE023"
#4
scoreboard players operation @s reserve_3 += @s reserve_2
execute if score @s MP < @s reserve_3 run return run data modify storage macro: ui.mp_bar_1 set value "uE024"
#5
scoreboard players operation @s reserve_3 += @s reserve_2
execute if score @s MP < @s reserve_3 run return run data modify storage macro: ui.mp_bar_1 set value "uE025"
#6
scoreboard players operation @s reserve_3 += @s reserve_2
execute if score @s MP < @s reserve_3 run return run data modify storage macro: ui.mp_bar_1 set value "uE026"
#7
scoreboard players operation @s reserve_3 += @s reserve_2
execute if score @s MP < @s reserve_3 run return run data modify storage macro: ui.mp_bar_1 set value "uE027"
#8
data modify storage macro: ui.mp_bar_1 set value "uE028"






