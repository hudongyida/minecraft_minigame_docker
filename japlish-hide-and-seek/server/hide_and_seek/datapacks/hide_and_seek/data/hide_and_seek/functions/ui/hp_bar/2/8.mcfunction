#reserve_1 全体
#reserve_2 全体/80
#reserve_3 各段階の最低値


#1
scoreboard players operation @s reserve_3 += @s reserve_2
execute if score @s HP_old < @s reserve_3 run return run data modify storage macro: ui.hp_bar_2 set value "uE0C1"
#2
scoreboard players operation @s reserve_3 += @s reserve_2
execute if score @s HP_old < @s reserve_3 run return run data modify storage macro: ui.hp_bar_2 set value "uE0C2"
#3
scoreboard players operation @s reserve_3 += @s reserve_2
execute if score @s HP_old < @s reserve_3 run return run data modify storage macro: ui.hp_bar_2 set value "uE0C3"
#4
scoreboard players operation @s reserve_3 += @s reserve_2
execute if score @s HP_old < @s reserve_3 run return run data modify storage macro: ui.hp_bar_2 set value "uE0C4"
#5
scoreboard players operation @s reserve_3 += @s reserve_2
execute if score @s HP_old < @s reserve_3 run return run data modify storage macro: ui.hp_bar_2 set value "uE0C5"
#6
scoreboard players operation @s reserve_3 += @s reserve_2
execute if score @s HP_old < @s reserve_3 run return run data modify storage macro: ui.hp_bar_2 set value "uE0C6"
#7
scoreboard players operation @s reserve_3 += @s reserve_2
execute if score @s HP_old < @s reserve_3 run return run data modify storage macro: ui.hp_bar_2 set value "uE0C7"
#8
data modify storage macro: ui.hp_bar_2 set value "uE0C8"






